import 'dart:async';

import 'package:daily_workout/main_screen.dart';
import 'package:flutter/material.dart';

class TimerScreen6 extends StatefulWidget {
  const TimerScreen6({Key? key}) : super(key: key);

  @override
  State<TimerScreen6> createState() => _TimerScreen6State();
}

class _TimerScreen6State extends State<TimerScreen6> {
  var isStarted = false;
  int counter=30;
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
              "JUMPING JACKS",
              style:  TextStyle(
                fontSize: 30,
              ),
            ),

            //الصورة
            const Image(image: AssetImage('images/m/jumping jacks.gif'),),
            const SizedBox(
              height: 50,
            ),

            //الشرح والتايمر
            Column(
              children:  [

                const Text(
                  "Start with your feet together and your arms by your sides, then jump up with your feet apart and your hands overhead.",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),

                const Text(
                  "Return to the start position then do the next rep. This exercise provides a full-body workout and works all your large muscle groups.",
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
                  style: const TextStyle(
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
            //TIMER BUTTON
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

            //Finish BUTTON
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
                            builder: (context) =>  const MainScreen(name: 'Karim')));
                  },
                  child: Column(
                    children: const [
                      Icon(
                        Icons.navigate_next,
                        color: Colors.teal,
                      ),
                      Text(
                        'Finish',
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
