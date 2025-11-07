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

import 'package:flutter/material.dart'; // CRITICAL: Added required import
import 'onboarding_screen.dart'; // Navigate to Onboarding after splash
import 'dart:async';

// --- BRAND THEME COLORS ---
const Color kPrimaryGold = Color(0xFFEAB503); 
const Color kDeepBlue = Color(0xFF1A1A1A); 

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Start a timer to navigate away from the splash screen after 3 seconds
    Timer(const Duration(seconds: 10), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          // Navigating to the OnboardingScreen
          // FIX APPLIED: Removed 'const' before OnboardingScreen()
          builder: (context) => const OnboardingScreen(), 
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    // The splash screen design uses a background gradient (from light gold to deep blue)
    return Scaffold(
      body: Container(
        // Apply the gradient background
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              // Light Gold/Cream color at the top (F7F7E6 is a clean, light color)
              Color(0xFFF7F7E6), 
              // Deep Blue at the bottom (Used a dark blue close to your text color)
              Color(0xFF004C99), 
            ],
            stops: [0.3, 1.0], 
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // --- LOGO (Placeholder for your logo image) ---
              // IMPORTANT: Update this path if your logo is elsewhere!
              // Image.asset(
              //   'images/The_app_Logo.jpeg',
              //   height: 120, 
              // ),
              Image(
              image: AssetImage('images/The_app_Logo.png'),
              height: 500,
              width: 300,
            ),
              const SizedBox(height: 15),

              // --- Tagline: Unlock Your Potential ---
              const Text( 
                'Unlock Your Potential',
                style: TextStyle( 
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: kDeepBlue, // Deep blue text color
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}