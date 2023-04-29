import 'package:flutter/material.dart';

import '../amateur_screens/amateur_screen1.dart';
import '../amateur_screens/amateur_screen2.dart';
import '../amateur_screens/amateur_screen3.dart';
import '../amateur_screens/amateur_screen4.dart';
import '../amateur_screens/amateur_screen5.dart';

class CustomizedRoutine2 extends StatelessWidget {
  CustomizedRoutine2({Key? key}) : super(key: key);
  final List nOExercises=['10','8','9','6','9'];

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
              itemCount: 5,
              itemBuilder: (BuildContext context, int index) => Card(
                child: ListTile(
                  title:  Text('Day ${index+1}'),
                  subtitle:  Text("${nOExercises[index]} Exercises"),
                  trailing: const Icon(Icons.run_circle_outlined),
                  onTap: (){
                    if(index==0)
                    {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context)=>AmateurDay1(),));
                    }
                    else if(index==1)
                    {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context)=>AmateurDay2(),));
                    }
                    else if(index==2)
                    {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context)=>AmateurDay3(),));
                    }
                    else if(index==3)
                    {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context)=>AmateurDay4(),));
                    }
                    else
                    {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context)=>AmateurDay5(),));
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




// class CustomizedRoutine2 extends StatefulWidget {
//   const CustomizedRoutine2({Key? key}) : super(key: key);
//
//   @override
//   State<CustomizedRoutine2> createState() => _CustomizedRoutine2State();
// }
//
// class _CustomizedRoutine2State extends State<CustomizedRoutine2>
// {
//   List customizedRoutine=["back","biceps","chest","legs","shoulder","triceps",];
//
//   List nOExercises=[6,8,9,7,9,3];
//
//
//   @override
//   Widget build(BuildContext context)
//   {
//     return Scaffold(
//       body: CustomScrollView(
//         slivers: [
//           ///APPBAR
//           const SliverAppBar(
//             backgroundColor: Colors.teal,
//             expandedHeight: 200,
//             pinned: true,
//
//             /// BACKGROUND APPBAR,TITLE
//             flexibleSpace:  FlexibleSpaceBar(
//
//               title: Text(
//                 "YOUR ROUTINE",
//                 style:TextStyle(
//                   fontSize: 18,
//                 ),
//               ),
//               centerTitle: true,
//
//               background: Image(
//                 image:AssetImage('images/customized.png'),
//                 fit: BoxFit.cover,
//               ),
//
//             ),
//
//           ),
//
//           ///BODY
//           SliverToBoxAdapter(
//             child: ListView.builder(
//               primary: false,
//               shrinkWrap: true,
//               itemCount: 6,
//               itemBuilder: (BuildContext context, int index) => Card(
//                 child: ListTile(
//                   title:  Text(customizedRoutine[index]),
//                   subtitle:  Text("${nOExercises[index]} Exercises"),
//                   trailing: const Icon(Icons.run_circle_outlined),
//                   onTap: (){
//
//
//                   },
//
//                 ),
//               ),
//
//             ),
//           ),
//
//         ],
//       ),
//     );
//   }
// }
