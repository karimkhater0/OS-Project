import 'package:flutter/material.dart';

class ProDay2 extends StatelessWidget {
  ProDay2({Key? key}) : super(key: key);

  final List<String> exercise=[
    "Barbell military press",
    "Lever shoulder press",
    "Dumbbell lateral raise",
    "Dumbbell front raise",
    "Pec deck fly",
    "Dumbbell shrug",
    "Bar curl",
    "Dumbbell curl",
    "Dumbbell preacher curl",
    "Triceps push down",
    "Dumbbell kickback",
  ];
  final List<String> images=[
    "images/pro/day2/Barbell military press.gif",
    "images/pro/day2/Lever shoulder press.gif",
    "images/pro/day2/Dumbbell lateral raise.gif",
    "images/pro/day2/Dumbbell front raise.gif",
    "images/pro/day2/Pec deck fly.gif",
    "images/pro/day2/Dumbbell shrug.gif",
    "images/pro/day2/Bar curl.gif",
    "images/pro/day2/Dumbbell curl.gif",
    "images/pro/day2/Dumbbell preacher curl.gif",
    "images/pro/day2/Triceps push down.gif",
    "images/pro/day2/Dumbbell kickback.gif",
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
              itemCount: 11,
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
