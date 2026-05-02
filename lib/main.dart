// ignore_for_file: avoid_unnecessary_containers, unused_field, prefer_final_fields, unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sec_flutter/api/api_screen.dart';
import 'package:sec_flutter/api/cubit/meal_cubit.dart';
import 'package:sec_flutter/mm/login.dart';
import 'package:sec_flutter/mm/register.dart';
import 'package:sec_flutter/sec/lec/navigate2.dart';
import 'package:sec_flutter/statemangement_examples/checkbox_example/checkbox.dart';
import 'package:sec_flutter/statemangement_examples/checkbox_example/cubit/checkbox_cubit.dart';
import 'package:sec_flutter/statemangement_examples/counter_example/counter.dart';
import 'package:sec_flutter/statemangement_examples/counter_example/cubit/counter_cubit.dart';
import 'package:sec_flutter/theme/cubit/theme_cubit.dart';

void main() {
  runApp(BlocProvider(create: (context) => ThemeCubit(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeMode>(
      builder: (context, themeMode) {
        return MaterialApp(
          theme: ThemeData(
            appBarTheme: AppBarTheme(backgroundColor: Colors.amber),
          ),
          darkTheme: ThemeData.dark(),
          themeMode: themeMode,
          debugShowCheckedModeBanner: false,
          home: MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) => CounterCubit(),
                child: Counter(),
              ),
              BlocProvider(
                create: (context) => CheckboxCubit(),
                child: CheckboxScreen(),
              ),

              BlocProvider(
                create: (context) => MealCubit()..getApiData(),
                child: ApiScreen(),
              ),
            ],
            child: LoginScreen(),
          ),
        );
      },
    );
  }
}

class MyPortfolio extends StatelessWidget {
  const MyPortfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        backgroundColor: Colors.blue,
        leading: Icon(Icons.person_3, color: Colors.white, size: 35),
        title: Text(
          "Portfolio",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          BlocBuilder<ThemeCubit, ThemeMode>(
            builder: (context, themeMode) {
              return Switch(
                value: themeMode == ThemeMode.dark,
                activeColor: Colors.amber,
                onChanged: (value) {
                  context.read<ThemeCubit>().toggleTheme();
                },
              );
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            /// image
            CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage("assets/images/dart&flutter2.png"),
            ),

            /// Name row
            Row(
              mainAxisAlignment: .center,
              children: [
                //Icon
                Icon(Icons.person, color: Colors.blue, size: 50),
                //Text
                Text(
                  "Gamal Emad ",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),

            /// Email row
            Padding(
              padding: EdgeInsets.only(left: 80),
              child: Row(
                mainAxisAlignment: .center,
                children: [
                  //Icon
                  Icon(Icons.email, color: Colors.blue, size: 50),
                  //Text
                  Text(
                    "gamalemad@gmail.com",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// Final exam Example
class example1 extends StatelessWidget {
  const example1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Final Exam",
          style: TextStyle(
            fontSize: 25,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.blue,
      ),

      body: Column(
        children: [
          customButton(title: "Button 1"),
          customButton(title: "Button 2"),
          customButton(title: "Button 3"),
        ],
      ),
    );
  }
}

class customButton extends StatelessWidget {
  const customButton({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.symmetric(horizontal: 10, vertical: 5),
      child: Container(
        height: 120,
        width: double.infinity,
        color: Colors.grey.shade400,
        child: Center(
          child: Text(
            title,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}

class example2 extends StatefulWidget {
  const example2({super.key});

  @override
  State<example2> createState() => _example2State();
}

class _example2State extends State<example2> {
  int _counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Welcome to flutter",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue,
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              "Your clicked $_counter items",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
            ),
          ),
          SizedBox(height: 8),
          GestureDetector(
            onTap: () {
              _counter++;
              print(_counter);
              setState(() {});
            },
            child: Container(
              height: 50,
              width: 150,
              color: Colors.grey,

              child: Center(
                child: Text(
                  "Click Me!",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class example3 extends StatelessWidget {
  const example3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Basic Widget App",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue,
      ),

      body: Image.asset("assets/images/earth.jpg", width: double.infinity),
    );
  }
}
