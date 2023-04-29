import 'package:daily_workout/warmup_screens/timer_screen1.dart';
import 'package:flutter/material.dart';



class MorningScreen extends StatefulWidget {
  const MorningScreen({Key? key}) : super(key: key);

  @override
  State<MorningScreen> createState() => _MorningScreenState();
}

class _MorningScreenState extends State<MorningScreen> {

   List<String> morningEx=
  <String>[
    "REVERSE CRUNCHES",
    "ABDOMINAL CRUSHES",
    "BIRD DOG",
    "PLANK",
    "BUTT KICKS",
    "JUMPING JACKS",
  ];
  List<String> morningExTimer= <String>['20','20','25','30','30','30',];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      body: CustomScrollView(
        slivers: [
          ///APPBAR
          const SliverAppBar(
            backgroundColor: Colors.teal,
            expandedHeight: 200,
            pinned: true,

            /// BACKGROUND APPBAR,TITLE
            flexibleSpace:  FlexibleSpaceBar(

              title: Text(
                "MORNING WARMUP",
                style:TextStyle(
                fontSize: 18,
              ),
              ),

              background: Image(
                  image:AssetImage('images/morning.png'),
                fit: BoxFit.cover,
              ),
              
            ),

          ),

          ///BODY
          SliverToBoxAdapter(
            child: ListView.builder(
              primary: false,
              shrinkWrap: true,
              itemCount: 6,
              itemBuilder: (BuildContext context, int index) => Card(
                child: ListTile(
                  title:  Text(morningEx[index]),
                  subtitle:  Text("00:${morningExTimer[index]}"),
                  trailing: const Icon(Icons.run_circle_outlined),

                ),
              ),



            ),
          ),

        ],
      ),

        ///START BUTTON
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
                      builder: (context)=>const TimerScreen1(),
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
