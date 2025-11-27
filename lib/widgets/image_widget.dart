import 'package:flutter/material.dart';

class CustomImageWidget extends StatelessWidget {
  const CustomImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Youth Key Image"),
      ),
      body: Center(
        child: Image.asset(
          'images/The_app_logo.png',
          width: 250,       // slightly smaller width
          height: 150,      // slightly smaller height
          fit: BoxFit.contain, // shows full image
        ),
      ),
    );
  }
}
