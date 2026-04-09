// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class Test2 extends StatefulWidget {
  Test2({super.key});

  @override
  State<Test2> createState() => _Test2State();
}

class _Test2State extends State<Test2> {
  TextEditingController name = TextEditingController();

  bool selectedValue = false;
  bool selectedValue2 = false;

  int selected = 1;

  int count = 0;

  List<String> myNames = [
    "gamal",
    "mohamed",
    "ahmed",
    "ali",
    "mahomde",
    "abdo",
    "gamal",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Text("Add"),
        onPressed: (){
          count++;
          setState(() {
            
          });
        }),
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        leading: Icon(Icons.arrow_back_ios_new),
        title: Text("Test 2", style: TextStyle()),
        centerTitle: true,
        actions: [
          Icon(Icons.language),
          SizedBox(width: 10),
          Icon(Icons.delete),
          SizedBox(width: 10),
          Icon(Icons.info),
          SizedBox(width: 10),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            //  Image.asset("assets/images/earth.jpg"),
            //  Image.network("https://tse3.mm.bing.net/th/id/OIP.YhZntTLjRIGXbX-iXwVRPgHaIC?rs=1&pid=ImgDetMain&o=7&rm=3"),
            Padding(
              padding: const EdgeInsets.all(15),
              child: TextField(
                controller: name,
                decoration: InputDecoration(
                  ///Enable
                  enabledBorder: OutlineInputBorder(),

                  /// bordder
                  border: OutlineInputBorder(),
                ),
              ),
            ),

            ElevatedButton(
              onPressed: () {
                print(name.text);
              },
              child: Text("Print controller content"),
            ),

            // Checkbox(value: selectedValue, onChanged: (value) {
            //   selectedValue = value!;
            //   setState(() {
                
            //   });
              
            // }),

            //  Checkbox(value: selectedValue2, onChanged: (value) {
            //   selectedValue2 = value!;
            //   setState(() {
                
            //   });

              Radio(value: 1 , groupValue: selected , onChanged: (value) {
                selected = value!;
                setState(() {
                  
                });
              },),
              
              Radio(value: 2 , groupValue:selected , onChanged: (value) {
                selected = value!;
                setState(() {
                  
                });
              },),

               Radio(value: 3 , groupValue:selected , onChanged: (value) {
                selected = value!;
                setState(() {
                  
                });
              },),


              SizedBox(height: 100,),

              Switch(value: selectedValue, onChanged: (v){
                selectedValue = v;
                setState(() {
                  
                });
              }),



              Text("$count" , style: TextStyle(
                fontSize: 30
              ),),
              
          
          ],
        ),
      ),
    );
  }
}
