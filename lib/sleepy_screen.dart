import 'package:daily_workout/sleepy_screens/s_screen1.dart';
import 'package:flutter/material.dart';


class SleepyScreen extends StatefulWidget {
  const SleepyScreen({Key? key}) : super(key: key);

  @override
  State<SleepyScreen> createState() => _SleepyScreenState();
}

class _SleepyScreenState extends State<SleepyScreen> {

  List<String> sleepyEx=[
    "TRICEPS STRETCH RIGHT",
    "TRICEPS STRETCH LEFT",
    "CHILD'S POSE",
    "BUTTERFLY STRETCH",
    "KNEE STRETCH",
    "LEFT LEG STRETCH",
    "RIGHT LEG STRETCH",
  ];
  List<String> sleepyExTimer=["30","30","30","50","40","30","30",];



  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: CustomScrollView(
        slivers: [
           const SliverAppBar(
            backgroundColor: Colors.teal,
            expandedHeight: 200,
            pinned: true,

            flexibleSpace:  FlexibleSpaceBar(
              title: Text("SLEEPY TIME STRETCHING",
              style:TextStyle(
                fontSize: 18,
              ),
              ),
              centerTitle: true,
              background: Image(
                image:AssetImage('images/sleepy.jpeg'),
                fit: BoxFit.cover,
              ),

            ),

          ),

           SliverToBoxAdapter(
            child: ListView.builder(
              primary: false,
              shrinkWrap: true,
              itemCount: 7,
              itemBuilder: (BuildContext context, int index) => Card(
                child: ListTile(
                  title:  Text(sleepyEx[index]),
                  subtitle:  Text("00:${sleepyExTimer[index]}"),
                  trailing: const Icon(Icons.run_circle_outlined),
                ),
              ),



            ),
          ),


        ],
      ),

      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20.0),

        child: Container(
          height: 50,
          decoration: BoxDecoration(
            color: Colors.teal,
            borderRadius: BorderRadius.circular(20),
          ),
          child: MaterialButton(

            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context)=> const SScreen1(),
                  )
              );
            },
            child: const Center(
              child: Text(
                'start',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}