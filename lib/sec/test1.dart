// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';

class Test1 extends StatefulWidget {
  const Test1({super.key});

  @override
  State<Test1> createState() => _Test1State();
}

class _Test1State extends State<Test1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: .spaceEvenly,
            crossAxisAlignment: .start,
            children: [
              Container(
                width: 200,
                height: 200,
                child: Text(
                  "Hello",
                  overflow:TextOverflow.ellipsis,
                  maxLines: 2,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.amberAccent,
                  border: Border.all(color: Colors.black, width: 4),
                  // borderRadius: BorderRadius.circular(15),
                  shape: BoxShape.rectangle,
                ),
              ),
          
              Divider(height: 20, color: Colors.amber, indent: 30, endIndent: 30),
          
              CircleAvatar(
                backgroundColor: Colors.red,
                minRadius: 60,
                maxRadius: 90,
                backgroundImage: AssetImage("assets/images/dart&flutter2.png"),
              ),
          
          
          
              CircleAvatar(
                backgroundColor: Colors.red,
                minRadius: 60,
                maxRadius: 90,
                backgroundImage: AssetImage("assets/images/dart&flutter2.png"),
              ),
          
              CircleAvatar(
                backgroundColor: Colors.red,
                minRadius: 60,
                maxRadius: 90,
                backgroundImage: AssetImage("assets/images/dart&flutter2.png"),
              ),


              Icon(Icons.account_balance_sharp , size: 90,color: Colors.amber, )
          
              
            ],
          ),
        ),
      ),
    );
  }
}
