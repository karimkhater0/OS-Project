import 'package:flutter/material.dart';

class AmateurDay3 extends StatelessWidget {
  AmateurDay3({Key? key}) : super(key: key);
  final List<String> exercise=[
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
  final List<String> images=[
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
                "DAY 3",
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
              primary: false,
              shrinkWrap: true,
              itemCount: 9,
              itemBuilder: (BuildContext context, int index) => Card(
                child: ListTile(
                  title:  Center(child: Text(exercise[index])),
                  onTap: (){
                    showDialog(
                        context: context,
                        builder: (context)
                        {
                          return AlertDialog(
                            title: Text(exercise[index]),
                            content: Image(
                              image: AssetImage(
                                  images[index]
                              ),
                              fit: BoxFit.cover,
                            ),
                          );
                        }
                    );

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