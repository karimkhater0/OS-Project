import 'package:daily_workout/pro_screens/pro_screen5.dart';
import 'package:flutter/material.dart';

import '../pro_screens/pro_screen1.dart';
import '../pro_screens/pro_screen2.dart';
import '../pro_screens/pro_screen3.dart';
import '../pro_screens/pro_screen4.dart';
import '../pro_screens/pro_screen6.dart';

class CustomizedRoutine3 extends StatelessWidget {
  CustomizedRoutine3({Key? key}) : super(key: key);

  final List nOExercises=['9','11','9','10','16','5'];

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
                "YOUR ROUTINE",
                style:TextStyle(
                  fontSize: 18,
                ),
              ),
              centerTitle: true,

              background: Image(
                image:AssetImage('images/customized.png'),
                fit: BoxFit.cover,
              ),

            ),

          ),

          ///BODY
          SliverToBoxAdapter(
            child: ListView.builder(

              shrinkWrap:true,
              itemCount: 6,
              itemBuilder: (BuildContext context, int index) => Card(
                child: ListTile(
                  title:  Text('Day ${index+1}'),
                  subtitle:  Text("${nOExercises[index]} Exercises"),
                  trailing: const Icon(Icons.run_circle_outlined),
                  onTap: (){
                    if(index==0)
                    {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context)=>ProDay1(),));
                    }
                    else if(index==1)
                    {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context)=>ProDay2(),));
                    }
                    else if(index==2)
                    {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context)=>ProDay3(),));
                    }
                    else if(index==3)
                    {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context)=>ProDay4(),));
                    }
                    else if(index==4)
                    {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context)=>ProDay5(),));
                    }
                    else
                    {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context)=>ProDay6(),));
                    }


                  },

                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
