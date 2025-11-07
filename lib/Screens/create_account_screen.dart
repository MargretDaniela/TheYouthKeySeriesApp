import 'package:flutter/material.dart';
import 'login_screen.dart'; // ✅ Import for back navigation

const Color kPrimaryGold = Color(0xFFEAB503);
const Color kDeepBlue = Color(0xFF1A1A1A);
const Color kSecondaryBlue = Color(0xFF004C99);

class CreateAccountScreen extends StatelessWidget {
  const CreateAccountScreen({super.key});

  Widget _buildTextField({
    required String labelText,
    required IconData icon,
    bool obscureText = false,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
          labelText: labelText,
          labelStyle: const TextStyle(color: kDeepBlue),
          prefixIcon: Icon(icon, color: kPrimaryGold),
          filled: true,
          fillColor: Colors.white,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: Colors.grey, width: 1),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide:
                const BorderSide(color: kPrimaryGold, width: 2),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final double goldColumnWidth = MediaQuery.of(context).size.width * 0.15;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Row(
        children: [
          Container(
            width: goldColumnWidth,
            height: double.infinity,
            color: kPrimaryGold,
            child: const Center(
              child: RotatedBox(
                quarterTurns: 3,
                child: Text(
                  'Youth K.E.Y Series',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2,
                  ),
                ),
              ),
            ),
          ),

          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 40),
                  Center(
                    child: Image.asset(
                      'assets/images/The_app_Logo.jpeg',
                      height: 80,
                    ),
                  ),
                  const SizedBox(height: 30),

                  const Text(
                    'Create Your Account',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w900,
                      color: kDeepBlue,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Start your journey today with the K.E.Y Series.',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                  const SizedBox(height: 40),

                  _buildTextField(
                    labelText: 'First Name',
                    icon: Icons.person_outline,
                  ),
                  _buildTextField(
                    labelText: 'Last Name',
                    icon: Icons.person_outline,
                  ),
                  _buildTextField(
                    labelText: 'Email Address',
                    icon: Icons.email_outlined,
                  ),
                  _buildTextField(
                    labelText: 'Password',
                    icon: Icons.lock_outline,
                    obscureText: true,
                  ),
                  const SizedBox(height: 10),

                  SizedBox(
                    width: double.infinity,
                    height: 55,
                    child: ElevatedButton(
                      onPressed: () {
                        print('Sign Up pressed');
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: kPrimaryGold,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        elevation: 5,
                      ),
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),

                  // ✅ Back to Login
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Already have an account?',
                        style: TextStyle(color: Colors.grey),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (_) => const LoginScreen(),
                            ),
                          );
                        },
                        child: const Text(
                          'Login',
                          style: TextStyle(
                            color: kSecondaryBlue,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
