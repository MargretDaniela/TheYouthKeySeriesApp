import 'package:flutter/material.dart';

class CustomContainerWidget extends StatelessWidget {
  const CustomContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Custom Container"),
      ),
      body: Center(
        child: Container(
          width: 250,                        // slightly wider
          height: 120,                       // slightly taller
          padding: const EdgeInsets.all(20), // inner padding
          margin: const EdgeInsets.all(12),  // outer margin
          decoration: BoxDecoration(
            color: Colors.deepOrangeAccent,  // new background color
            borderRadius: BorderRadius.circular(16), // rounded corners
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 6,
                offset: Offset(3, 3),
              ),
            ],
          ),
          alignment: Alignment.center,       // center the child
          child: const Text(
            "Youth Key Container",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
