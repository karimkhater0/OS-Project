import 'package:daily_workout/shared/cubit/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sqflite/sqflite.dart';

class AppCubit extends Cubit<AppStates>
{
  AppCubit() : super(AppInitialState());
  static AppCubit get(context)=> BlocProvider.of(context);

  late Database database;
  List<Map> accounts=[];
  void createDatabase()async
  {
    database = await openDatabase(
        'f',
        version: 1,
        onCreate: (database,version)
        async {
          print('Database created');
          await database.execute(
              'CREATE TABLE accounts(id INTEGER PRIMARY KEY,name TEXT,weight INTEGER,height INTEGER,age INTEGER, gender TEXT, level TEXT)'
          ).then((value) {print('table created');});

        },

        onOpen: (database)
        {
          emit(AppCreateDatabaseState());
          getFromDatabase(database).then((value){
            accounts=value;
            print(accounts);

          });
          print('database opened');
        }

    );
  }

  Future insertToDatabase(
      {
        required String name,
        required int weight,
        required int height,
        required int age,
        required String gender,
        required String level
      })async
  {
    return await database.transaction((txn)
    {
      return txn.rawInsert(
          'INSERT INTO accounts(name,weight,height,age,gender,level) VALUES("$name","$weight","$height","$age","$gender","$level")'
      ).then((value) {
        emit(AppInsertToDatabaseState());
        print('$value inserted successfully');
        getFromDatabase(database);

      }).catchError((error)
      {
        print('Error while inserting the data $error');
      });
    });

  }

  Future<List<Map>> getFromDatabase(database)async
  {
    emit(AppGetDatabaseState());
    return await database.rawQuery('SELECT * FROM accounts');
  }

}