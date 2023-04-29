import 'package:flutter/material.dart';

class ShoulderScreen extends StatelessWidget {
  ShoulderScreen({Key? key}) : super(key: key);

  List<String> shoulderEx=
  [
    "45 degree incline row",
    "Barbell shrug",
    "Cable Lateral raise",
    "Dumbbell lateral raise",
    "Dumbbell shoulder press",
    "Half kneeling high cable row rope",
    "Rear dealt machine fly's",
    "Smith machine shoulder press",
    "Two arm cable front raise"
  ];
  List<String> shoulderImage=
      [
        "images/amateur/shoulder/45 degree incline row.gif",
        "images/amateur/shoulder/barbell shrug.gif",
        "images/amateur/shoulder/cable lateral raise.gif",
        "images/amateur/shoulder/dumbbell lateral raise.gif",
        "images/amateur/shoulder/dumbbell shoulder press.gif",
        "images/amateur/shoulder/half kneeling high cable row rope.gif",
        "images/amateur/shoulder/rear delt machine flys.gif",
        "images/amateur/shoulder/smith machine shoulder press.gif",
        "images/amateur/shoulder/two arm cable front raise.gif",
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
                  "Shoulder Exercises",
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
                  itemCount: 9,
                  itemBuilder: (context,index)=>Card(
                    child: ListTile(

                      title: Center(child: Text(shoulderEx[index])),

                      onTap: (){
                        showDialog(
                            context: context,
                            builder: (context)
                            {
                              return AlertDialog(
                                title: Text(shoulderEx[index]),
                                content: Image(
                                  image: AssetImage(
                                     shoulderImage[index]
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
