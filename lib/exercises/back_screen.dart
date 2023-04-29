import 'package:flutter/material.dart';

class BackScreen extends StatelessWidget {
  BackScreen({Key? key}) : super(key: key);
  List<String> backEx=
  [
    "Close grip cable row",
    "Bar pull straight",
    "lat pull down",
    "Pull up",
    "Rope straight up pull down",
    "Seated cable row",
  ];
  List<String> backImage=
      [
        "images/amateur/back/close grip cable row.gif",
        "images/amateur/legs/bar pull straight .gif",
        "images/amateur/back/Lat Pull down.gif",
        "images/amateur/back/Pull up.gif",
        "images/amateur/back/Rope Straight Arm Pulldown .gif",
        "images/amateur/back/Seated Cable Row.gif",
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
                "Back Exercises",
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

                    title: Center(child: Text(backEx[index])),
                   // subtitle: const Text(""),
                    onTap: (){
                      showDialog(
                        context: context,
                        builder: (context)
                        {
                          return AlertDialog(
                            title: Text(backEx[index]),
                            content: Image(
                                image: AssetImage(
                                    backImage[index]
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
