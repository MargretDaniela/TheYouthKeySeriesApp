import 'package:flutter/material.dart';
import 'create_account_screen.dart'; // ✅ Import to navigate to Sign Up screen

// --- Brand Colors ---
const Color kPrimaryGold = Color(0xFFEAB503);
const Color kDeepBlue = Color(0xFF1A1A1A);
const Color kSecondaryBlue = Color(0xFF004C99);

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _rememberMe = false;

  // --- Reusable TextField Widget ---
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
                const BorderSide(color: kPrimaryGold, width: 2), // Gold focus border
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
          // --- Gold Sidebar ---
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

          // --- Main Login Section ---
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 40),
                  Center(
                    child: Image.asset(
                      'images/The_app_Logo.jpeg',
                      height: 80,
                    ),
                  ),
                  const SizedBox(height: 30),

                  const Text(
                    'Welcome Back',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w900,
                      color: kDeepBlue,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Login to continue your journey.',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                  const SizedBox(height: 40),

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

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Checkbox(
                            value: _rememberMe,
                            onChanged: (bool? value) {
                              setState(() {
                                _rememberMe = value ?? false;
                              });
                            },
                            activeColor: kPrimaryGold,
                          ),
                          const Text('Remember Me', style: TextStyle(color: kDeepBlue)),
                        ],
                      ),
                      TextButton(
                        onPressed: () {
                          // TODO: Forgot password logic later
                          print('Forgot Password?');
                        },
                        child: const Text(
                          'Forgot Password?',
                          style: TextStyle(
                            color: kPrimaryGold,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),

                  SizedBox(
                    width: double.infinity,
                    height: 55,
                    child: ElevatedButton(
                      onPressed: () {
                        // TODO: Actual login logic
                        print('Login pressed');
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: kPrimaryGold,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        elevation: 5,
                      ),
                      child: const Text(
                        'Login',
                        style: TextStyle(
                          fontSize: 18,
                          color: kDeepBlue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),

                  // --- Sign Up Navigation ---
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Don't have an account?",
                        style: TextStyle(color: Colors.grey),
                      ),
                      TextButton(
                        onPressed: () {
                          // ✅ Navigate to CreateAccountScreen
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (_) => const CreateAccountScreen(),
                            ),
                          );
                        },
                        child: const Text(
                          'Sign Up',
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
