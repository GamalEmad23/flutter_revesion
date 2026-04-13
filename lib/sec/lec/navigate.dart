import 'package:flutter/material.dart';
import 'package:sec_flutter/sec/lec/navigate2.dart';
import 'package:sec_flutter/sec/lec/navigate3.dart';

class Navigate extends StatefulWidget {
  const Navigate({super.key});

  @override
  State<Navigate> createState() => _NavigateState();
}

class _NavigateState extends State<Navigate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            ElevatedButton(onPressed: (){
              Navigator.pushReplacementNamed(context , '/navigate2' , arguments: "Gamal");
            }, child: Text("Go to navigate 2")),

            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Navigate3(),));
            }, child: Text("Go to navigate 3")),
          ],
        ),
      ),
    );
  }
}