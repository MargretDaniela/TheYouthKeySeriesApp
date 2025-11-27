import 'package:flutter/material.dart';

class CustomIconWidget extends StatelessWidget {
  const CustomIconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Custom Icon"),
      ),
      body: const Center(
        child: Icon(
          Icons.star,       // different icon
          size: 50,         // slightly larger
          color: Colors.amber, // different color
        ),
      ),
    );
  }
}
