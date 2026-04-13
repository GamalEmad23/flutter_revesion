import 'package:flutter/material.dart';
import 'package:sec_flutter/sec_tasks/friends_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
      centerTitle: true,
      title: Text("Main Screen" , style: TextStyle(
        fontSize: 26,
        fontWeight: FontWeight.bold
      ),),
     ),

     body: Column(
      children: [
        Center(
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => FriendsScreen(),));
            },
            child: Container(
              height: 80,
              width: 320,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(20)
              ),
            
              child: Center(child: Text("Go To List Page" , style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),)),
            ),
          ),
        ),
        SizedBox(height: 20,),


        ///
         Center(
          child: Container(
            height: 80,
            width: 320,
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(20)
            ),

            child: Center(child: Text("Go To Details Page" , style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),)),
          ),
        ),
        SizedBox(height: 20,),


        ///
         Center(
          child: Container(
            height: 80,
            width: 320,
            decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.circular(20)
            ),

            child: Center(child: Text("Go To List Page" , style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),)),
          ),
        )
      ],
     ),
    );
  }
}