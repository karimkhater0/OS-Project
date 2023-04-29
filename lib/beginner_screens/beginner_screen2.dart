import 'package:flutter/material.dart';

class BeginnerDay2 extends StatelessWidget {
  BeginnerDay2({Key? key}) : super(key: key);
  final List<String> exercise=[
    "Bar pull straight",
    "lat pull down",
    "Close grip cable row",
    "Pull up",
    "Dumbbell lateral raise",
    "45 degree incline row",
    "Dumbbell preacher curl",
    "Hammer curl",

  ];
  final List<String> images=[
    "images/amateur/legs/bar pull straight .gif",
    "images/amateur/back/Lat Pull down.gif",
    "images/amateur/back/close grip cable row.gif",
    "images/amateur/back/Pull up.gif",
    "images/amateur/shoulder/dumbbell lateral raise.gif",
    "images/amateur/shoulder/45 degree incline row.gif",
    "images/amateur/biceps/Dumbbell Preacher Curl.gif",
    "images/amateur/biceps/Hammer Curls.gif",


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