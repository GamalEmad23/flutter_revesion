import 'package:flutter/material.dart';
import 'package:sec_flutter/sec_tasks/destination.dart';

class DestinationsScreen extends StatelessWidget {
  const DestinationsScreen({super.key});

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
        itemCount: destinationsData.length,
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
                  backgroundImage: AssetImage(destinationsData[index].image),
                ),

                SizedBox(width: 6,),

                /// 
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(destinationsData[index].name , style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                      ),),
                      Text(
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        destinationsData[index].description , style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey.shade600
                      ),),
                    ],
                  ),
                )
              ],
            ),
          ),
          
        ),
      ),
    );
  }
}