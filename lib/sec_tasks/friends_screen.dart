import 'package:flutter/material.dart';
import 'package:sec_flutter/sec_tasks/friends.dart';

class FriendsScreen extends StatelessWidget {
  const FriendsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Friends List"),
        centerTitle: true,
      ),

      ///
      body: ListView.separated(
        separatorBuilder: (context, index) => Divider(),
        itemCount: friendsList.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            height: 130,
            width: 350,
            decoration: BoxDecoration(
              color: Colors.white10,
              border: Border.all(color: Colors.grey , width: 2),
              borderRadius: BorderRadius.circular(50)
            ),

            child: Row(
              children: [
                CircleAvatar(
                  minRadius: 45,
                  backgroundImage: AssetImage(friendsList[index].image),
                ),

                SizedBox(width: 60,),

                /// 
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(friendsList[index].name , style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),),
                    Text(friendsList[index].status , style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey.shade600
                    ),),
                  ],
                )
              ],
            ),
          ),
          
        ),
      ),
    );
  }
}