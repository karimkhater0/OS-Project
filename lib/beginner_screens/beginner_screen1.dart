import 'package:flutter/material.dart';

class BeginnerDay1 extends StatelessWidget {
  BeginnerDay1({Key? key}) : super(key: key);
  final List<String> exercise=[
    'Dumbbell press',
    'Dumbbell incline bench press',
    'Low cable crossover',
    'Depth',
    'Dumbbell shoulder press',
    'Triceps3',
    'Triceps1',
    'Cable Lateral raise',
  ];
  final List<String> images=[
    "images/amateur/chest/Dumbbell Press.gif",
    "images/amateur/chest/Dumbbell Incline Bench Press.gif",
    "images/amateur/chest/Low Cable Crossover.gif",
    "images/amateur/chest/dipth.gif",
    "images/amateur/shoulder/dumbbell shoulder press.gif",
    "images/amateur/triceps/triceps3.gif",
    "images/amateur/triceps/triceps1.gif",
    "images/amateur/shoulder/cable lateral raise.gif",
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
