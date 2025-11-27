import 'package:flutter/material.dart';

class NetworkImageWidget extends StatelessWidget {
  const NetworkImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Network Image Demo"),
      ),
      body: Container(
        color: Colors.amberAccent,
        child: Align(
          alignment: Alignment(0, 0), // center of the container
          child: Image.network(
            'https://flutter.dev/assets/homepage/carousel/slide_1-bg-455fb12b7cd7c121b63b7f4e0c10dcf86bb6310b3c0b5a5be2b9da7e04b4b83c.jpg',
            width: 250,  // optional width
            height: 150, // optional height
            fit: BoxFit.cover, // scale the image
          ),
        ),
      ),
    );
  }
}