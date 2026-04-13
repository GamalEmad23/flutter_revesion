import 'package:flutter/material.dart';
import 'package:sec_flutter/sec/lec/navigate3.dart';

class Navigate2 extends StatefulWidget {
  const Navigate2({super.key, required this.name});

  final String name;

  @override
  State<Navigate2> createState() => _Navigate2State();
}

class _Navigate2State extends State<Navigate2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigate 2"),
      ),

      body: Center(
        child: Column(
          children: [
             ElevatedButton(onPressed: (){
              Navigator.pop(context);
            }, child: Text("Go to navigate 1")),


            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Navigate3(),));
            }, child: Text("Go to navigate 3")),
          ],
        ),
      ),
    );
  }
}