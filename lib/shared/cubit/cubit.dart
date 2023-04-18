import 'package:daily_workout/shared/cubit/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sqflite/sqflite.dart';

class AppCubit extends Cubit<AppStates>
{
  AppCubit() : super(AppInitialState());
  static AppCubit get(context)=> BlocProvider.of(context);

  late Database database;

  void createDatabase()
  {
     openDatabase(
      'test1.db',
      version: 1,
      onCreate: (database,version) async
      {
        print('Database created');
        await database.execute('CREATE TABLE accounts(id INTEGER PRIMARY KEY,name TEXT,weight INTEGER,height INTEGER,age INTEGER, gender TEXT, level TEXT)');
      },
      onOpen: (database){


        print('Database opened');
      },
    ).then((value)
    {
      database=value;

      emit(AppCreateDatabaseState());


    });


  }

 Future insertToDatabase({
    required String name,
    required int height,
    required int weight,
    required int age,
    required String gender,
    required String level,
  })async
  {
    return await database.transaction((txn) {
      txn.rawInsert(
          'INSERT INTO accounts(name,height,weight,age,gender,level) VALUES("$name","$height","$weight","$age","$gender","$level")',
      ).then((value) {
        print('$value Inserted Successfully');
        emit(AppInsertToDatabaseState());

      })
          .catchError((error){
        print('Error while inserting the data $error');
      });

      return Future.sync(() => null);

    });




  }

}