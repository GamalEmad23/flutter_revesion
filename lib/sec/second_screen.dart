import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  Color containerColor = Colors.black;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Container(height: 250, width: 250, color: containerColor),
              ),
          
              ///
              ElevatedButton(
                onPressed: () {
                  containerColor = Colors.red;
                  setState(() {
                    
                  });
                },
                child: Text("Red"),
              ),
              ElevatedButton(
                onPressed: () {
                  containerColor = Colors.green;
                  setState(() {
                    
                  });
                },
                child: Text("Grean"),
              ),
              ElevatedButton(
                onPressed: () {
                  containerColor = Colors.blue;
                  setState(() {
                    
                  });
                },
                child: Text("Blue"),
              ),
          
          
          
              /////
              Container(
                height: 250,
                width: 600,
                color: Colors.grey,
                child: Row(
                  children: [
                    Container(
                      height: 250,
                      width: 100,
                      color: Colors.red,
                    ),
                    Container(
                      height: 250,
                      width: 100,
                      color: Colors.green,
                    ),
                    Container(
                      height: 250,
                      width: 100,
                      color: Colors.blue,
                    ),
                  ],
                ),
              ),
          
          
              ////
              ElevatedButton(onPressed: (){}, child: Text("Inc")),
              ElevatedButton(onPressed: (){}, child: Text("Dec")),
              
              
            ],
          ),
        ),
      ),
    );
  }
}
