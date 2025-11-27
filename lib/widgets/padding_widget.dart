import 'package:flutter/material.dart';

class CustomPaddingWidget extends StatelessWidget {
  const CustomPaddingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
      child: Container(
        padding: const EdgeInsets.all(12), // inner padding for the text
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 164, 183, 58),         // different background color
          borderRadius: BorderRadius.circular(12), // rounded corners
        ),
        child: const Text(
          "Welcome to Youth Key Series!",
          style: TextStyle(
            fontSize: 22,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
