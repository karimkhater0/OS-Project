import 'package:flutter/material.dart';

class ProDay5 extends StatelessWidget {
  ProDay5({Key? key}) : super(key: key);

  final List<String> exercise=[
    "Barbell military press",
    "Dumbbell shoulder press",
    "Dumbbell lateral raise",
    "Weight plate front raise",
    "Pec deck fly",
    "Behind the back barbell shrug reverse",
    "Bar curl",
    "Cable curl",
    "Hummer curls",
    "Seated dumbbell triceps extension",
    "Triceps push down",
    "Close grip bench press",
    "Crunch",
    "Leg raise dragon flag",
    "Flutter kicks",
    "Plank",

  ];
  final List<String> images=[
    "images/pro/day5/Barbell military press.gif",
    "images/pro/day5/Dumbbell shoulder press.gif",
    "images/pro/day5/Dumbbell lateral raise.gif",
    "images/pro/day5/Weight plate front raise.gif",
    "images/pro/day5/Pec deck fly.gif",
    "images/pro/day5/Behind the back barbell shrug reverse.gif",
    "images/pro/day5/Bar curl.gif",
    "images/pro/day5/Cabel curl.gif",
    "images/pro/day5/Hummer curls .gif",
    "images/pro/day5/Seated dumbbell triceps extension.gif",
    "images/pro/day5/Triceps push down.gif",
    "images/pro/day5/Close grip bench press.gif",
    "images/pro/day5/Crunch.gif",
    "images/pro/day5/Leg raise dragon flag.gif",
    "images/pro/day5/Flutter kicks.gif",
    "images/pro/day5/Plank.gif",
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
              itemCount: 16,
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
