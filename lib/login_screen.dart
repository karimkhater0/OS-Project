import 'package:daily_workout/shared/cubit/cubit.dart';
import 'package:daily_workout/shared/cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'info_screen.dart';
import 'main_screen.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => AppCubit()..createDatabase(),
      child: BlocConsumer<AppCubit, AppStates>(
        listener: (context, state) {},
        builder: (BuildContext context, Object? state) {

          AppCubit cubit = AppCubit.get(context);

          return Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/background.jpeg"),
                fit: BoxFit.cover,
              ),
            ),
            child: Scaffold(
              backgroundColor: Colors.transparent,

              appBar: AppBar(
                title: const Text(
                  'DAILY WORKOUT',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  ),
                ),
                centerTitle: true,
                backgroundColor: Colors.transparent,
                shadowColor: Colors.transparent,
              ),

              body: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    const Text(
                      'Welcome to your stretching session! Let’s get ready to loosen up those muscles and feel more relaxed.',
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 100,
                    ),

                    ///Accounts
                    Container(
                      width: double.infinity,
                      height: 300,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black54,
                          width: 1.5,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          cubit.accounts.isNotEmpty
                              ? Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: ListView.builder(
                                itemCount: cubit.accounts.length,
                                itemBuilder: (context, index) => Card(
                                  color: Colors.transparent,
                                  child: ListTile(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  MainScreen(
                                                    name: cubit.accounts[
                                                    index]['name'],
                                                    level: cubit.accounts[
                                                    index]['level'],
                                                  )));
                                    },
                                    title: Text(
                                      '${cubit.accounts[index]['name']}',
                                      style: const TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                    subtitle: Text(
                                      '${cubit.accounts[index]['level']}',
                                      style: const TextStyle(
                                        color: Colors.blueGrey,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    leading: const Icon(
                                      Icons.account_circle,
                                      size: 40,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          )
                              : const Expanded(
                              child: Center(
                                  child: Text(
                                    'There are no accounts, Please add new account.',
                                    style: TextStyle(
                                      color: Colors.white60,
                                    ),
                                  ))),

                          ///NEW ACCOUNT BUTTON
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.teal,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              width: double.infinity,
                              child: MaterialButton(
                                child: const Text(
                                  "New Account",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                          const InfoScreen()));
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}


