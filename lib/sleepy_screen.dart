import 'package:daily_workout/sleepy_screens/s_screen1.dart';
import 'package:flutter/material.dart';


class SleepyScreen extends StatefulWidget {
  const SleepyScreen({Key? key}) : super(key: key);

  @override
  State<SleepyScreen> createState() => _SleepyScreenState();
}

class _SleepyScreenState extends State<SleepyScreen> {

  List<String> sleepyEx=
  <String>[
    "LEFT QUAD STRETCH WITH WALL",
    "RIGHT QUAD STRETCH WITH WALL",
    "CALF STRETCH LEFT",
    "CALF STRETCH RIGHT",
    "TRICEPS STRETCH LEFT",
    "TRICEPS STRETCH RIGHT",
    "COBRA STRETCH",
    "CHILD'S POSE",
    "CAT COW POSE",
    "BRIDGE",
    "LYING BUTTERFLY STRETCH",
    "LYING TWIST STRETCH LEFT",
    "LYING TWIST STRETCH RIGHT",
  ];
  List<String> sleepyExTimer= <String>["20","20","20","20","30","30","30","30","40","30","50","20","20"];

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
              itemCount: 10,
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
            child: Center(
              child: Column(
                children: const [
                  Icon(
                    Icons.play_arrow_rounded,
                    color: Colors.white,
                  ),

                  Text(
                    'start',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}