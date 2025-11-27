import 'package:flutter/material.dart';

// --- App Colors ---
const Color kPrimaryGold = Color(0xFFAC7D0C);
const Color kDeepBlue = Color(0xFF004C99);

class RegistrationSuccessScreen extends StatelessWidget {
  const RegistrationSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: const EdgeInsets.only(top: 50, bottom: 20),
            color: kDeepBlue,
            child: const Center(
              child: Text(
                'Youth K.E.Y Series',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: kPrimaryGold,
                ),
              ),
            ),
          ),
          Expanded(
            child: Center(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: kPrimaryGold.withOpacity(0.2),
                        border: Border.all(color: kPrimaryGold, width: 3),
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.check,
                          color: kPrimaryGold,
                          size: 90,
                        ),
                      ),
                    ),
                    const SizedBox(height: 50),
                    const Text(
                      'Registration Successful!',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: kDeepBlue,
                        height: 1.2,
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      "Welcome to the Key Series! You're all set to unlock potential. Let's start your journey.",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                    const SizedBox(height: 60),
                    SizedBox(
                      width: double.infinity,
                      height: 55,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamedAndRemoveUntil(
                            context,
                            '/dashboard',
                            (route) => false,
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: kPrimaryGold,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          elevation: 5,
                        ),
                        child: const Text(
                          'Go to Dashboard',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
