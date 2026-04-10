import 'package:flutter/material.dart';

class FirstSceen extends StatefulWidget {
   FirstSceen({super.key});

  @override
  State<FirstSceen> createState() => _FirstSceenState();
}

class _FirstSceenState extends State<FirstSceen> {
  bool selectedValue = false;
  int size = 200;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: CircleAvatar( 
                    backgroundImage:AssetImage("assets/images/earth.jpg"),
                    maxRadius: 80,
                  ),
                ),
            
                SizedBox(height: 60,),
            
                /// Text1
                Text("Mobile Number" , style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),),
            
                ///TextField 1
                TextField(),
                SizedBox(height: 30,),
            
            
                /// Text2
                Text("Password" , style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),),
            
                ///TextField 2
                TextField(),
                
                SizedBox(height: 35,),
            
                Row(
                  children: [
                    Checkbox(value: selectedValue, onChanged: (value) {
                      selectedValue = value!;
                      setState(() {
                        
                      });
                    },),
            
                    Text("Remember me"),                ],
                ),
                 
                 SizedBox(
                  height: 150,
                 ),
            
            
                /// Login Button
                    ElevatedButton(
                      style: ButtonStyle(
                        fixedSize: WidgetStatePropertyAll(Size(double.maxFinite, 20)),
                      ),
                      onPressed: (){}, child: Text("Login"))
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}