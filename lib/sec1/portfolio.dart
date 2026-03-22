import 'package:flutter/material.dart';

class Portfolio extends StatelessWidget {
  const Portfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Portfolio"  ,style: TextStyle(color: Colors.white,fontSize: 30)),
        titleSpacing: 0,
        leading: Icon(Icons.account_circle_outlined,size: 35,color: Colors.white,),
      ),

      body: Column(
        children: [
          SizedBox(height: 150,),
          Center(
            child: CircleAvatar(
              maxRadius: 70,
              backgroundImage: AssetImage("assets/images/dart&flutter2.png"),
            ),
          ),
          
          SizedBox(height: 15,),
          Padding(
            padding:  EdgeInsets.only(left: 100),
            child: Container(
              child: Row(
                children: [
                  Icon(Icons.person ,color: Colors.blue,size: 35,),
                  SizedBox(width: 5,),
                  Text("Gamal Emad", style: TextStyle(fontSize: 18),)
                ],
              ),
            ),
          ),
          SizedBox(height: 15,),

           Padding(
             padding: EdgeInsets.only(left: 100),
             child: Container(
              child: Row(
                children: [
                  Icon(Icons.email ,color: Colors.blue,size: 30,),
                  SizedBox(width: 5,),
                  Text("gamalemad@gmail.com" , style: TextStyle(fontSize: 18),)
                ],
              ),
                       ),
           ),
        ],
      ),

    );
  }
} 