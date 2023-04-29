import 'package:flutter/material.dart';

class BeginnerDay3 extends StatelessWidget {
  BeginnerDay3({Key? key}) : super(key: key);

  final List<String> exercise=
  [
    "Dumbbell lunge",
    "Leg extension",
    "Leg press",
    "Seated leg curl",
    "Squat",
    "Dead left",
  ];
  final List<String> images=
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
              itemCount: 6,
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