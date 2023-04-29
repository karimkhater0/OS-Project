import 'package:flutter/material.dart';

import '../beginner_screens/beginner_screen1.dart';
import '../beginner_screens/beginner_screen2.dart';
import '../beginner_screens/beginner_screen3.dart';


class CustomizedRoutine1 extends StatelessWidget {
  CustomizedRoutine1({Key? key}) : super(key: key);
  final List nOExercises=['8','8','6'];

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
              itemCount: 3,
                itemBuilder: (BuildContext context, int index) => Card(
                  child: ListTile(
                    title:  Text('Day ${index+1}'),
                    subtitle:  Text("${nOExercises[index]} Exercises"),
                    trailing: const Icon(Icons.run_circle_outlined),
                    onTap: (){
                      if(index==0)
                        {
                          Navigator.push(context,
                          MaterialPageRoute(builder: (context)=>BeginnerDay1(),));
                        }
                      else if(index==1)
                        {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context)=>BeginnerDay2(),));
                        }
                      else
                        {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context)=>BeginnerDay3(),));
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
