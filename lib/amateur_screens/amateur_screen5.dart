import 'package:flutter/material.dart';

class AmateurDay5 extends StatelessWidget {
  AmateurDay5({Key? key}) : super(key: key);
  final List<String> exercise=[
    "Cable triceps",
    "Overhead cable triceps",
    "Overhead bar triceps",
    "Dumbbell preacher curl",
    "Dumbbell seated neutral wrist curl",
    "Dumbbell curl",
    "Hammer curl",
    "Overhead cable curl",
    "Reverse grip ez bar curl",
  ];
  final List<String> images=[
    "images/amateur/triceps/triceps1.gif",
    "images/amateur/triceps/triceps2.gif",
    "images/amateur/triceps/triceps3.gif",
    "images/amateur/biceps/Dumbbell Preacher Curl.gif",
    "images/amateur/biceps/Dumbbell Seated Neutral Wrist Curl.gif",
    "images/amateur/biceps/dumbll curl.gif",
    "images/amateur/biceps/Hammer Curls.gif",
    "images/amateur/biceps/overhead cable curl.gif",
    "images/amateur/biceps/Reverse Grip  EZ Bar Curl.gif",
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
                "DAY 5",
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