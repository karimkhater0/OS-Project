import 'package:flutter/material.dart';

class AmateurDay1 extends StatelessWidget {
  AmateurDay1({Key? key}) : super(key: key);
  final List<String> exercise=[
    "Depth",
    "Dumbbell incline bench press",
    "Dumbbell press",
    "Flat chest press",
    "High cable crossover",
    "Incline dumbbell press",
    "Low cable crossover",
    "Pec deck fly",
    "Push up",
    "Cable Triceps",
  ];
  final List<String> images=[
    "images/amateur/chest/dipth.gif",
    "images/amateur/chest/Dumbbell Incline Bench Press.gif",
    "images/amateur/chest/Dumbbell Press.gif",
    "images/amateur/chest/flat chest press.gif",
    "images/amateur/chest/High Cable Crossover.gif",
    "images/amateur/chest/Incline Dumbbell Press.gif",
    "images/amateur/chest/Low Cable Crossover.gif",
    "images/amateur/chest/Pec Deck Fly.gif",
    "images/amateur/chest/push up.gif",
    "images/amateur/triceps/triceps1.gif",
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
                "DAY 1",
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