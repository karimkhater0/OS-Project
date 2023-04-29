import 'package:flutter/material.dart';

class ProDay4 extends StatelessWidget {
  ProDay4({Key? key}) : super(key: key);

  final List<String> exercise=[
    "Chin up",
    "Pull up",
    "Reverse barbell row",
    "Dumbbell row",
    "Rope straight arm pulldown",
    "Dead lift",
    "Wide grip barbell bench press",
    "Incline barbell bench press",
    "Incline dumbbell fly",
    "High cable crossover",
  ];
  final List<String> images=[
    "images/pro/day4/Chin up.gif",
    "images/pro/day4/Pull up.gif",
    "images/pro/day4/Reverse barbell row.gif",
    "images/pro/day4/Dumbbell row.gif",
    "images/pro/day4/Rope straight arm pulldown.gif",
    "images/pro/day4/Dead lift .gif",
    "images/pro/day4/Wide grip barbell bench press.gif",
    "images/pro/day4/Incline barbell bench press.gif",
    "images/pro/day4/Incline dumbbell fly.gif",
    "images/pro/day4/High cable crossover.gif",
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
              itemCount: 10,
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
