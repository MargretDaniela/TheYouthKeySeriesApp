import 'package:flutter/material.dart';

class RowWidget extends StatelessWidget {
  const RowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("The Row Widget"),
      ),
      body: Container(
        color: Colors.amber, 
        child: const Align(
          alignment: Alignment(0, 0), // center
          child: Row(
            mainAxisSize: MainAxisSize.min, // takes only needed horizontal space
            children: [
              Text(
                "Number 1",
                style: TextStyle(fontSize: 30, color: Colors.black),
              ),
              SizedBox(width: 30), // space between numbers
              Text(
                "Number 2",
                style: TextStyle(fontSize: 28, color: Colors.black),
              ),
              SizedBox(width: 30),
              Text(
                "Number 3",
                style: TextStyle(fontSize: 30, color: Colors.black),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
