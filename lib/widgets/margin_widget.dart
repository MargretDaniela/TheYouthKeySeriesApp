import 'package:flutter/material.dart';

class MarginWidget extends StatelessWidget {
  const MarginWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber, // outer container background
      child: Align(
        alignment: Alignment(0, 0), // center
        child: Container(
          margin: const EdgeInsets.all(15), // margin constructor
          padding: const EdgeInsets.all(15), // added padding for spacing
          color: Colors.white, // inner container color
          child: const Text(
            "This is the margin!",
            style: TextStyle(
              fontSize: 24,
              color: Colors.blue,
            ),
          ),
        ),
      ),
    );
  }
}
