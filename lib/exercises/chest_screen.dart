import 'package:flutter/material.dart';

class ChestScreen extends StatelessWidget {
  ChestScreen({Key? key}) : super(key: key);

  List<String> chestEx=
  [
    "Depth",
    "Dumbbell incline bench press",
    "Dumbbell press",
    "Flat chest press",
    "High cable crossover",
    "Incline dumbbell press",
    "Low cable crossover",
    "Pec deck fly",
    "Push up",
  ];
  List<String> chestImage=
      [
        "images/amateur/chest/dipth.gif",
        "images/amateur/chest/Dumbbell Incline Bench Press.gif",
        "images/amateur/chest/Dumbbell Press.gif",
        "images/amateur/chest/flat chest press.gif",
        "images/amateur/chest/High Cable Crossover.gif",
        "images/amateur/chest/Incline Dumbbell Press.gif",
        "images/amateur/chest/Low Cable Crossover.gif",
        "images/amateur/chest/Pec Deck Fly.gif",
        "images/amateur/chest/push up.gif",
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
                  "Chest Exercises",
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

                      title: Text(chestEx[index]),
                      subtitle: const Text(""),
                      onTap: (){
                        showDialog(
                            context: context,
                            builder: (context)
                            {
                              return AlertDialog(
                                title: Text(chestEx[index]),
                                content: Image(
                                  image: AssetImage(
                                      chestImage[index]
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
