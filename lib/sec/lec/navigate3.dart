import 'package:flutter/material.dart';

class Navigate3 extends StatefulWidget {
  const Navigate3({super.key});

  @override
  State<Navigate3> createState() => _Navigate3State();
}

class _Navigate3State extends State<Navigate3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: Text("Navigate 3"),
      ),
    );
  }
}