import 'package:flutter/material.dart';

class AlignmentWidget extends StatelessWidget {
  const AlignmentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Alignment Guide"),
      ),
      body: Container(
        color: Colors.amber,
        child: const Align(
          alignment: Alignment(-0.5, 0.5),
          child: Text(
            "This is the guide of the aligned statement",
            style: TextStyle(
              fontSize: 30,
              color: Color(0xFF0D47A1), // deep blue
            ),
          ),
        ),
      ),
    );
  }
}
