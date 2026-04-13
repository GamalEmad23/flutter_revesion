import 'package:flutter/material.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({super.key});

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: .center,
        children: [

          /// Alert Dialog
          Center(child: ElevatedButton(onPressed: (){
            showDialog(context: context, builder: (context) => AlertDialog(
              title:Text("Confirm") ,
              content: Text("Do you agree?"),
              actions: [
                ElevatedButton(onPressed: (){}, child: Text("Cancel")),
                ElevatedButton(onPressed: (){}, child: Text("Ok")),
              ],
            ),);
          }, child: Text("Show Alert Dialog"))),


          /// BottomSheet
          Center(child: Builder(
            builder: (context) {
              return ElevatedButton(onPressed: (){
                showBottomSheet(context: context, builder: (context) => Container(
                  height: 400,
                  width: double.infinity,
                  child: Text("Hello Gamal"),
                ));
              }, child: Text("Show Bottom Sheet"));
            }
          ),),


          /// SnackBar
          ElevatedButton(onPressed: (){
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                backgroundColor: Colors.green,
                content: Text("Login Successfuly"))
            );
          }, child: Text("Show Snack Bar")),


          /// Material Banner
          ElevatedButton(onPressed: () {
            ScaffoldMessenger.of(context).showMaterialBanner(
              MaterialBanner(
                content: Text("Network error"), actions: [
                TextButton(onPressed: () {
                  ScaffoldMessenger.of(context).hideCurrentMaterialBanner();
                }, child: Text('Hide'))
              ])
            );
          }, child: Text("Show Material Banner")),

        ],
      ),
    );
  }
}