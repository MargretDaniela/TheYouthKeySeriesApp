import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("The text widgets"),
      ),
      body: Center(child:
      Text("Finding out the Text widget",
      style: TextStyle(
        fontSize:30,
        fontWeight: FontWeight.w300,
        color: Colors.amberAccent
      ),)),
    );
  }
}