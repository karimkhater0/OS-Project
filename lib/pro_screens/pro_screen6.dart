import 'package:flutter/material.dart';

class ProDay6 extends StatelessWidget {
  ProDay6({Key? key}) : super(key: key);

  final List<String> exercise=[
    "Squat",
    "Dumbbell lunge",
    "Leg press",
    "Leg curl",
    "Leg extension",

  ];
  final List<String> images=[
    "images/pro/day6/Squat.gif",
    "images/pro/day6/Dumbbell lunge.gif",
    "images/pro/day6/Leg press.gif",
    "images/pro/day6/Leg curl.gif",
    "images/pro/day6/Leg extension.gif",


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
                "DAY 6",
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
              itemCount: 5,
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
