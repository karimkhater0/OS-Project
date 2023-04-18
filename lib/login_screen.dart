import 'package:daily_workout/shared/cubit/cubit.dart';
import 'package:daily_workout/shared/cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'info_screen.dart';


class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {


  @override
  void initState() {
    super.initState();


  }
  @override
  Widget build(BuildContext context) {

    return BlocProvider(
      create: (BuildContext context) =>AppCubit()..createDatabase(),
      child: BlocConsumer<AppCubit,AppStates>(
        listener: (context,state){},

        builder: (BuildContext context, Object? state)
        {
          return Container(
            decoration:  const BoxDecoration(

              image: DecorationImage(
                image:
                AssetImage("images/bg3.jpeg"),
                fit: BoxFit.cover,

              ),
            ),

            child: Scaffold(
              backgroundColor: Colors.transparent,
              appBar: AppBar(

                title: const Text(
                  'DAILY WORKOUT',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,

                  ),
                ),

                centerTitle: true,
                backgroundColor: Colors.transparent,
                shadowColor: Colors.transparent,
              ),


              body: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                    const Text(
                      'Welcome to your stretching session! Let’s get ready to loosen up those muscles and feel more relaxed.',
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),

                    ),


                    ///ACCOUNTS
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black54,
                          width: 1.5,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),

                      child: const Padding(
                        padding:  EdgeInsets.all(8.0),

                        child: Text(
                          'There are no accounts, Please create a new account.',
                          style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                              color: Colors.white70
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height:40,),

                    ///NEW ACCOUNT BUTTON
                    Container(
                      decoration:  BoxDecoration(
                        color: Colors.teal,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      width: double.infinity,
                      height: 40,
                      child: MaterialButton(

                        child: const Text(
                          "New Account",
                          style:TextStyle(
                            color: Colors.white,
                          ),
                        ),

                        onPressed: ()
                        {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder:
                                      (context)=> const InfoScreen()
                              )
                          );

                        },
                      ),
                    ),
                  ],
                ),
              ),

            ),
          );
        },

      ),
    );
  }
}
