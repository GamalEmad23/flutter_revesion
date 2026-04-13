import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharePref extends StatefulWidget {
  const SharePref({super.key});

  @override
  State<SharePref> createState() => _SharePrefState();
}

class _SharePrefState extends State<SharePref> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
        body: Center(
          child: Column(
            mainAxisAlignment: .center,
            children: [
              ElevatedButton(onPressed: () async{
              final  SharedPreferences prefs = await SharedPreferences.getInstance();
              prefs.setString("my_name", "Gamal");
              print("my name is saved");
              }, child: Text("Set Name")),
              ElevatedButton(onPressed: () async{
              final  SharedPreferences prefs = await SharedPreferences.getInstance();
             var name= prefs.getString("my_name");
              print(name);
             
              }, child: Text("Get Name")),

              ElevatedButton(onPressed: () async{
              final  SharedPreferences prefs = await SharedPreferences.getInstance();
             var name= prefs.remove("my_name");
              print("my name is removed");
             
              }, child: Text("Delet Name")),
            ],
          ),
        ),
    );
  }
}