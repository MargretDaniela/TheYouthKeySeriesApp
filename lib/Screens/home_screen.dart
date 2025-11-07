// // ignore: file_names
// import 'package:flutter/material.dart';

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key}); 

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Home'),
//         backgroundColor: Colors.deepPurple,
//       ),
//       body: const Center(
//         child: Text(
//           'Welcome to the App!',
//           style: TextStyle(fontSize: 22),
//         ),
//       ),
//     );
//   }
// }import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key}); 

  @override
  Widget build(BuildContext context) {
    // This is the dashboard placeholder screen consistent with the app's gold and deep blue theme.
    return Scaffold(
      appBar: AppBar(
        // Ensure the AppBar is styled using the Gold color (0xFFEAB503)
        title: const Text('Dashboard'),
        backgroundColor: const Color(0xFFEAB503), // Gold
      ),
      body: const Center(
        child: Text(
          'Welcome to the Youth K.E.Y Series App!',
          style: TextStyle(fontSize: 22, color: Color(0xFF1A1A1A)), // Deep Blue/Dark Text
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
