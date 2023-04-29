import 'package:flutter/material.dart';

class ProDay1 extends StatelessWidget {
  ProDay1({Key? key}) : super(key: key);
  final List<String> exercise=[
    "Incline barbell bench press",
    "Wide grip barbell bench press",
    "Dumbbell press",
    "Low cable crossover",
    "Dipth",
    "Barbell row",
    "T-Bar row",
    "Band seated row",
    "Hyper extension",

  ];
  final List<String> images=[
    "images/pro/day1/Incline barbell bench press.gif",
    "images/pro/day1/Wide grip barbell bench press.gif",
    "images/pro/day1/Dumbbell press.gif",
    "images/pro/day1/Low cable crossover.gif",
    "images/pro/day1/Dipth.gif",
    "images/pro/day1/Barbell row.gif",
    "images/pro/day1/T-Bar row.gif",
    "images/pro/day1/Band seated row.gif",
    "images/pro/day1/Hyper extension.gif",

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
