import 'package:flutter/material.dart';
import 'main_screen.dart';


class InfoScreen extends StatefulWidget {
  const InfoScreen({Key? key}) : super(key: key);

  @override
  State<InfoScreen> createState() => _InfoScreenState();
}

class _InfoScreenState extends State<InfoScreen> {
  var userNameController = TextEditingController();
  String? gender;
  String? level;
  double height =150.0;
  int age=20;
  int weight =75;
  String? name;
  var formKey =GlobalKey<FormState>();
  


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset:false ,

      appBar: AppBar(
        
        title:const Text("Daily Workout",),
        backgroundColor: Colors.teal,
        shadowColor: Colors.tealAccent,
      ),


      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/bg3.jpeg"),
          fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),

          child: Form(
            key: formKey,
            child: Column(
              children: [
                ///User Name
                TextFormField(

                style: const TextStyle(
                    color: Colors.white,
                ),
                controller: userNameController,
                keyboardType: TextInputType.name ,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'User name must not be empty';
                  }
                  return null;
                },

                decoration:  const InputDecoration(

                  prefixIconColor: Colors.white,

                  labelText: "User Name",
                  labelStyle: TextStyle(
                    color: Colors.white,
                  ),


                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),

                  ),
                  focusedBorder: OutlineInputBorder(

                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    borderSide: BorderSide(color: Colors.white),
                  ),

                  prefixIcon: Icon(
                    Icons.account_circle_sharp,
                  ),
                ),
                
                ),
                const SizedBox(
                  height: 20,

                ),


                ///HEIGHT
                Expanded(
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.black12,

                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                            "Height",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          mainAxisAlignment: MainAxisAlignment.center,
                          textBaseline: TextBaseline.alphabetic,

                          children:  [
                            Text(
                              "${height.round()}",
                            style: const TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                            ),
                            const Text(
                                "CM",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        Slider(
                          activeColor: Colors.teal,

                            value: height ,
                            max:220.0,
                            min: 80.0,
                            onChanged: (value)
                            {
                              setState(()
                              {
                                height=value;

                              });
                            })
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,


                ),


                ///AGE,WEIGHT
                Expanded(
                  child: Row(
                    children: [
                      ///Age
                      Expanded(
                        child: Container(

                          decoration:  BoxDecoration(

                            color: Colors.black12,
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,

                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(
                                      "Age",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 30,
                                      color: Colors.white,

                                    ),
                                  ),
                                   Text(
                                    "$age",
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Colors.white,

                                    ),
                                  ),

                                  ///Buttons
                                  Row(
                                    children: [
                                      FloatingActionButton(
                                        backgroundColor: Colors.teal,
                                        onPressed: ()
                                        {
                                          setState(() {
                                            age--;
                                          });
                                        },
                                        heroTag: "age-",
                                        child: const Icon(
                                          Icons.remove,

                                        ),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      FloatingActionButton(
                                        backgroundColor: Colors.teal,

                                        onPressed: ()
                                        {
                                          setState(() {
                                            age++;
                                          });
                                        },
                                        heroTag: "age+",
                                        child: const Icon(
                                          Icons.add,

                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,

                      ),
                      ///Weight
                      Expanded(
                        child: Container(

                          decoration:  BoxDecoration(

                            color: Colors.black12,
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,

                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(
                                    "Weight",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 30,
                                      color: Colors.white,

                                    ),
                                  ),
                                   Text(
                                    "$weight",
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Colors.white,

                                    ),
                                  ),

                                  ///Buttons
                                  Row(
                                    children: [
                                      FloatingActionButton(
                                        backgroundColor: Colors.teal,
                                        onPressed: ()
                                        {
                                          setState(() {
                                            weight--;
                                          });
                                        },
                                        heroTag: "weight-",
                                        child: const Icon(
                                          Icons.remove,

                                        ),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      FloatingActionButton(
                                        backgroundColor: Colors.teal,

                                        onPressed: ()
                                        {
                                          setState(() {
                                            weight++;
                                          });
                                        },
                                        heroTag: "weight+",
                                        child: const Icon(
                                          Icons.add,

                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),


                ),
                const SizedBox(
                  height: 20,

                ),


                ///GENDER,LEVEL
                Expanded(
                  child: Row(
                    children: [

                      ///Gender
                      Expanded(
                        child: Container(

                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.black12,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ///male
                              RadioListTile(

                                title: const Text(
                                    "Male",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                value: "male",
                                activeColor: Colors.teal,

                                groupValue: gender,
                                onChanged: (value){
                                  setState(() {
                                    gender = value.toString();
                                  });
                                },


                              ),

                              ///female
                              RadioListTile(
                                title: const Text(
                                    "Female",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                                ),
                                value: "female",
                                activeColor: Colors.teal,
                                groupValue: gender,
                                onChanged: (value){
                                  setState(() {
                                    gender = value.toString();
                                  });

                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,

                      ),

                      ///level
                      Expanded(
                        child: Container(

                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.black12,
                          ),
                          child: Column(
                            
                            children: [
                              ///Beginner
                              RadioListTile(
                                title: const Text(
                                  "Beginner",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                value: "Beginner",
                                activeColor: Colors.teal,

                                groupValue: level,
                                onChanged: (value){
                                  setState(() {
                                    level = value.toString();
                                  });
                                },
                              ),

                              ///Amateur
                              RadioListTile(
                                title: const Text(
                                  "Amateur",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                value: "Amateur",
                                activeColor: Colors.teal,
                                groupValue: level,
                                onChanged: (value){
                                  setState(() {
                                    level = value.toString();
                                  });
                                },
                              ),

                              ///Professional
                              RadioListTile(
                                title: const Text(
                                  "Pro",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,

                                  ),
                                ),
                                value: "Pro",
                                activeColor: Colors.teal,
                                groupValue: level,
                                onChanged: (value){
                                  setState(() {
                                    level = value.toString();
                                  });
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),

                  ),
                const SizedBox(
                  height: 20,

                ),

                ///Confirm Button
                Container(

                  width: double.infinity,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.teal,
                  ),

                  child:  MaterialButton(
                    shape:const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0))
                    ),
                    onPressed: (){
                      if(formKey.currentState!.validate()&&gender!=null&&level!=null) {
                        name=userNameController.text;
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder:
                                    (context) =>  MainScreen(name:name)
                            )
                        );
                      }
                      },
                    child: const Text(
                        "Confirm",
                      style: TextStyle(

                        color: Colors.white,
                      ),
                    ),

                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
