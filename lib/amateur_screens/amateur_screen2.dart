import 'package:flutter/material.dart';

class AmateurDay2 extends StatelessWidget {
  AmateurDay2({Key? key}) : super(key: key);
  final List<String> exercise=[
    "Close grip cable row",
    "Bar pull straight",
    "lat pull down",
    "Pull up",
    "Rope straight up pull down",
    "Seated cable row",
    "Bar curl",
    "Cable curl",
  ];
  final List<String> images=[
    "images/amateur/back/close grip cable row.gif",
    "images/amateur/legs/bar pull straight .gif",
    "images/amateur/back/Lat Pull down.gif",
    "images/amateur/back/Pull up.gif",
    "images/amateur/back/Rope Straight Arm Pulldown .gif",
    "images/amateur/back/Seated Cable Row.gif",
    "images/amateur/biceps/bar curl.gif",
    "images/amateur/biceps/cabel curl.gif",
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
                "DAY 2",
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
              itemCount: 8,
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