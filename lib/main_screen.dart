import 'package:daily_workout/customized_routine/beginner_routine.dart';
import 'package:daily_workout/customized_routine/pro_routine.dart';
import 'package:daily_workout/sleepy_screen.dart';
import 'package:flutter/material.dart';

import 'customized_routine/amateur_routine.dart';
import 'morning_screen.dart';

class MainScreen extends StatelessWidget {
  MainScreen({Key? key, required this.name,required this.level, }) : super(key: key);
  final String? name;
  final String? level;
  var nextPage;
  var nODays;
  var nOEx;
  void navMethod(level)
  {
    if(level=='Beginner')
      {
        nextPage=CustomizedRoutine1();
        nODays=3;
        nOEx=22;

      }
    else if(level=='Amateur')
      {
        nextPage=CustomizedRoutine2();
        nODays=5;
        nOEx=42;
      }
    else
      {
        nextPage=CustomizedRoutine3();
        nODays=6;
        nOEx=60;
      }

  }



  @override
  Widget build(BuildContext context) {
    navMethod(level);
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/background.jpeg'),
          fit: BoxFit.cover,
        ),
      ),

      child: Scaffold(
        backgroundColor: Colors.transparent,

        appBar: AppBar(
          title: Text("Hi $name"),
          backgroundColor: Colors.teal,
          shadowColor: Colors.tealAccent,
        ),


        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ///Default Routine
                Row(
                  children: const [
                    Icon(
                      Icons.run_circle_outlined,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Default Routine",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),

                ///Morning warmup
                InkWell(
                  child: Container(
                    width: double.infinity,
                    height: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          image: AssetImage('images/morning.png'),
                          fit: BoxFit.cover,

                        )),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 30.0,horizontal: 16.0
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "MORNING WARMUP",
                            style: TextStyle(
                              color: Colors.teal,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 0,vertical: 15),
                            child: Row(
                              children: const [
                                Icon(
                                  Icons.access_time_filled,
                                  color: Colors.teal,
                                  size: 15,
                                ),
                                Text(
                                  " 3 minutes",
                                  style: TextStyle(
                                    color: Colors.teal,
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),

                                Icon(
                                  Icons.electric_bolt_sharp,
                                  color: Colors.teal,
                                  size: 15,
                                ),
                                Text(
                                  " 6 exercises",
                                  style: TextStyle(
                                    color: Colors.teal,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  onTap: ()
                  {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context)=>const MorningScreen(),));
                  },
                ),
                const SizedBox(
                  height: 10,
                ),

                ///sleepy time stretching
                InkWell(
                  child: Container(
                    width: double.infinity,
                    height: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        //color: Colors.red,
                        image: const DecorationImage(
                          image: AssetImage('images/sleepy.jpeg'),
                          fit: BoxFit.cover,
                        )),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 30,horizontal: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "SLEEPY TIME STRETCHING",
                            style: TextStyle(
                              color: Colors.teal,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 0,vertical: 15),
                            child: Row(
                              children: const [
                                Icon(
                                  Icons.access_time_filled,
                                  color: Colors.teal,
                                  size: 15,
                                ),
                                Text(
                                  " 4 minutes",
                                  style: TextStyle(
                                    color: Colors.teal,
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(
                                  Icons.electric_bolt_sharp,
                                  color: Colors.teal,
                                  size: 15,
                                ),
                                Text(
                                  " 7 exercises",
                                  style: TextStyle(
                                    color: Colors.teal,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                onTap: (){
                 Navigator.push(context,
                          MaterialPageRoute(builder: (context)=>const SleepyScreen(),));
                },
                ),
                const SizedBox(
                  height: 20,
                ),


                ///Customized Routine
                Row(
                  children: const [
                    Icon(
                      Icons.run_circle_outlined,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Customized Routine",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),

                InkWell(
                  child: Container(
                    width: double.infinity,
                    height: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),

                        image: const DecorationImage(
                          image: AssetImage('images/customized.png'),
                          fit: BoxFit.cover,
                        )),

                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 30,horizontal: 16),

                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: [

                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "Customized Routine",
                            style: TextStyle(
                              color: Colors.teal,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 0,vertical: 15),
                            child: Row(
                              children:  [
                                const Icon(
                                  Icons.access_time_filled,
                                  color: Colors.teal,
                                  size: 15,
                                ),
                                Text(
                                  "$nODays days a week",
                                  style: const TextStyle(
                                    color: Colors.teal,
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Icon(
                                  Icons.electric_bolt_sharp,
                                  color: Colors.teal,
                                  size: 15,
                                ),
                                Text(
                                  "$nOEx exercises a week",
                                  style: const TextStyle(
                                    color: Colors.teal,
                                  ),
                                ),
                              ],
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),

                  onTap: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context)=>nextPage,));
                  },
                ),



              ],
            ),
          ),
        ),
      ),
    );
  }
}
