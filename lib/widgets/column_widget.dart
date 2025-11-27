import 'package:flutter/material.dart';

class CustomColumnWidget extends StatelessWidget {
  const CustomColumnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Custom Column"),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.deepPurple[50], // soft background
        padding: const EdgeInsets.all(16),
        child: Align(
          alignment: Alignment.centerLeft, // left-aligned column
          child: Column(
            mainAxisSize: MainAxisSize.min, // minimum vertical space
            crossAxisAlignment: CrossAxisAlignment.start, // left-align text
            children: const [
              Text(
                "Welcome to Youth Key Series",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.amberAccent,
                ),
              ),
              SizedBox(height: 12), // spacing between items
              Text(
                "Explore amazing Flutter widgets",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.amber,
                ),
              ),
              SizedBox(height: 12),
              Text(
                "Create beautiful UI easily",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.amberAccent,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
