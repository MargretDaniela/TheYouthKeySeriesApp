// import 'dart:async';
// import 'package:flutter/material.dart';
// import 'onboardingcreen.dart';

// class SplashScreen extends StatefulWidget {
// const SplashScreen({super.key}); 

//   @override
//   State<SplashScreen> createState() => _SplashScreenState();
// }

// class _SplashScreenState extends State<SplashScreen> {
//   @override
//   void initState() {
//     super.initState();

//     // Move to Onboarding after 3 seconds
//     Timer(const Duration(seconds: 10), () {
//       Navigator.pushReplacement(
//         context,
//         MaterialPageRoute(builder: (context) => OnboardingScreen()),
//       );
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return const Scaffold(
//       backgroundColor: Colors.deepPurple,
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
            
//             Image(
//               image: AssetImage('images/The_app_Logo.png'),
//               height: 100,
//             ),
//             SizedBox(height: 20),
//             Text(
//               "The Youth K.E.Y Series App",
//               style: TextStyle(
//                 color: Colors.white,
//                 fontSize: 24,
//                 fontWeight: FontWeight.bold,
//                 backgroundColor: Colors.lightBlue
//               ),
//             ),
//             SizedBox(height: 40),
//             CircularProgressIndicator(color: Colors.white),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'onboarding_screen.dart';
import 'dart:async';

// --- BRAND THEME COLORS ---
const Color kDarkGold = Color(0xFFAC7D0C); // Dark gold
const Color kCream = Color(0xFFF7F7E6);    // Cream color
const Color kDeepBlue = Color(0xFF1A1A1A); // Deep blue text

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Navigate to OnboardingScreen after 10 seconds
    Timer(const Duration(seconds: 10), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => const OnboardingScreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              kDarkGold, // Dark gold at the top
              kCream,    // Cream at the bottom
            ],
            stops: [0.0, 1.0],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // --- Logo ---
              Image(
                image: AssetImage('images/The_app_Logo.png'),
                height: 500,
                width: 300,
              ),
              const SizedBox(height: 15),

              // --- Tagline ---
              const Text(
                'Unlock Your Potential',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: kDeepBlue,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
