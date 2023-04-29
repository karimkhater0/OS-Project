import 'package:flutter/material.dart';

class ProDay3 extends StatelessWidget {
  ProDay3({Key? key}) : super(key: key);

  final List<String> exercise=[
    "Squat",
    "Hack squat",
    "Leg press",
    "Leg extension",
    "Leg curl",
    "Crunch",
    "Leg raise dragon flag",
    "Flutter kicks",
    "Plank",
  ];
  final List<String> images=[
    "images/pro/day3/Squat.gif",
    "images/pro/day3/Hack squat.gif",
    "images/pro/day3/Leg press.gif",
    "images/pro/day3/Leg extension.gif",
    "images/pro/day3/Leg curl.gif",
    "images/pro/day3/Crunch.gif",
    "images/pro/day3/Leg raise dragon flag.gif",
    "images/pro/day3/Flutter kicks.gif",
    "images/pro/day3/Plank.gif",

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
