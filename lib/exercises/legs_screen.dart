import 'package:flutter/material.dart';

class LegsScreen extends StatelessWidget {
  LegsScreen({Key? key}) : super(key: key);

  List<String> legsEx=
  [
    "Dumbbell lunge",
    "Leg extension",
    "Leg press",
    "Seated leg curl",
    "Squat",
    "Dead left",
  ];
  List<String> legsImage=
  [
    "images/amateur/back/died left.gif",
    "images/amateur/legs/Dumbbell Lunge.gif",
    "images/amateur/legs/LEG EXTENSION.gif",
    "images/amateur/legs/Leg Press.gif",
    "images/amateur/legs/Seated Leg Curl.gif",
    "images/amateur/legs/squat.gif",
  ];
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
        body:CustomScrollView(
          slivers: [
            const SliverAppBar(
              backgroundColor: Colors.teal,
              expandedHeight: 200,
              pinned: true,

              /// BACKGROUND APPBAR,TITLE
              flexibleSpace:  FlexibleSpaceBar(

                title: Text(
                  "Legs Exercises",
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

            SliverToBoxAdapter(
              child: ListView.builder(
                  shrinkWrap: true,
                  primary: false,
                  itemCount: 6,
                  itemBuilder: (context,index)=>Card(
                    child: ListTile(

                      title: Center(child: Text(legsEx[index])),

                      onTap: (){
                        showDialog(
                            context: context,
                            builder: (context)
                            {
                              return AlertDialog(
                                title: Text(legsEx[index]),
                                content: Image(
                                  image: AssetImage(
                                     legsImage[index]
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              );
                            }
                        );
                      },

                    ),
                  )

              ),
            ),
          ],
        )
    );
  }
}
