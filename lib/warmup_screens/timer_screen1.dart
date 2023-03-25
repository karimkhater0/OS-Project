import 'dart:async';
import 'package:daily_workout/warmup_screens/timer_screen2.dart';
import 'package:flutter/material.dart';

class TimerScreen1 extends StatefulWidget {
  const TimerScreen1({Key? key}) : super(key: key);

  @override
  State<TimerScreen1> createState() => _TimerScreen1State();
}

class _TimerScreen1State extends State<TimerScreen1> {
  String t = "images/bridge.gif";
  var isStarted = false;
  int counter=20;
  Timer? timer;
  void _timer(){

    if(timer!=null){
      timer!.cancel();
    }
    timer =Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if(counter>0)
        {
          counter--;
        }
        else{
          timer.cancel();
          isStarted = !isStarted;
        }
      });
    });
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.teal,
        shadowColor: Colors.tealAccent,
        title: const Text(
          "Morning Warmup",
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //اسم التمرين
            const Text(
              "REVERSE CRUNCHES",
              style:  TextStyle(
                fontSize: 30,
              ),
            ),

            //الصورة
            const Image(image: AssetImage('images/m/reverce crunches.gif'),),
            const SizedBox(
              height: 50,
            ),

            //الشرح والتايمر
            Column(
              children:   [
                const Text(
                  "Lie on your back with your knees up at a 90 degree angle and your hands behind your head.",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Lift your upper body and thighs, and then stretch out. Repeat this exercise.",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  counter==0?"Done":"$counter Seconds",
                  style:const TextStyle(
                    fontSize: 25
                  ),
                ),
              ],
            ),
          ],
        ),
      ),

      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20.0),

        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ///TIMER BUTTON
            Expanded(
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.teal,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: MaterialButton(
                  onPressed: () {
                    setState(() {
                      isStarted =!isStarted;
                      isStarted?_timer():timer!.cancel();
                    });
                  },
                  child: Column(
                    children: [
                      Icon(
                        isStarted ? Icons.stop : Icons.play_arrow_rounded,
                        color: Colors.white,
                      ),
                      Text(
                        isStarted?"Stop":"Start",
                      style:const TextStyle(
                        color: Colors.white,
                      ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            const SizedBox(width: 10),

            ///NEXT BUTTON
            Expanded(
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: Colors.teal,
                    width: 1.5,
                  )
                ),
                child: MaterialButton(
                  onPressed: () {
                    if(timer!=null){
                      timer!.cancel();
                    }
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>  const TimerScreen2()));
                  },
                  child: Column(
                    children: const [
                      Icon(
                        Icons.navigate_next,
                        color: Colors.teal,
                      ),
                      Text(
                        'Next',
                        style: TextStyle(
                          color: Colors.teal,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
