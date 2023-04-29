import 'package:flutter/material.dart';

class TricepsScreen extends StatelessWidget {
  TricepsScreen({Key? key}) : super(key: key);

  List<String> tricepsEx=
  [
    "Cable triceps",
    "Overhead cable triceps",
    "Overhead bar triceps",
  ];
  List<String> tricepsImage=
      [
        "images/amateur/triceps/triceps1.gif",
        "images/amateur/triceps/triceps2.gif",
        "images/amateur/triceps/triceps3.gif",
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
                  "Triceps Exercises",
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
                  itemCount:3,
                  itemBuilder: (context,index)=>Card(
                    child: ListTile(

                      title: Center(child: Text(tricepsEx[index])),

                      onTap: (){
                        showDialog(
                            context: context,
                            builder: (context)
                            {
                              return AlertDialog(
                                title: Text(tricepsEx[index]),
                                content: Image(
                                  image: AssetImage(
                                      tricepsImage[index]
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
