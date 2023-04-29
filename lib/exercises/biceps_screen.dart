import 'package:flutter/material.dart';

class BicepsScreen extends StatelessWidget {
  BicepsScreen({Key? key}) : super(key: key);

  List<String> bicepsEx=
  [
    "Bar curl",
    "Cable curl",
    "Dumbbell preacher curl",
    "Dumbbell seated neutral wrist curl",
    "Dumbbell curl",
    "Hammer curl",
    "Overhead cable curl",
    "Reverse grip ez bar curl",
  ];
  List<String> bicepsImage=
      [
        "images/amateur/biceps/bar curl.gif",
        "images/amateur/biceps/cabel curl.gif",
        "images/amateur/biceps/Dumbbell Preacher Curl.gif",
        "images/amateur/biceps/Dumbbell Seated Neutral Wrist Curl.gif",
        "images/amateur/biceps/dumbll curl.gif",
        "images/amateur/biceps/Hammer Curls.gif",
        "images/amateur/biceps/overhead cable curl.gif",
        "images/amateur/biceps/Reverse Grip  EZ Bar Curl.gif",
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
                  "Biceps Exercises",
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
                  itemCount: 8,
                  itemBuilder: (context,index)=>Card(
                    child: ListTile(

                      title: Center(child: Text(bicepsEx[index])),

                      onTap: (){
                        showDialog(
                            context: context,
                            builder: (context)
                            {
                              return AlertDialog(
                                title: Text(bicepsEx[index]),
                                content: Image(
                                  image: AssetImage(
                                      bicepsImage[index]
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