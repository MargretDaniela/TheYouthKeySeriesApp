import 'package:flutter/material.dart';

// --- Brand Colors ---
const Color kPrimaryGold = Color(0xFFAC7D0C);
const Color kDeepBlue = Color(0xFF1A1A1A);
const Color kSecondaryBlue = Color(0xFF004C99);

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _rememberMe = false;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _login() {
    if (_emailController.text.isEmpty || _passwordController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Please fill in all fields.'),
          backgroundColor: Colors.red,
        ),
      );
      return;
    }
    Navigator.pushReplacementNamed(context, '/home');
  }

  Widget _buildTextField({
    required String labelText,
    required IconData icon,
    required TextEditingController controller,
    bool obscureText = false,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: TextField(
        controller: controller,
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
            borderSide: const BorderSide(color: kPrimaryGold, width: 2),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 80),
            Image.asset('images/The_app_Logo.png', height: 150),
            const SizedBox(height: 30),
            const Text(
              'Welcome Back',
              style: TextStyle(
                  fontSize: 28, fontWeight: FontWeight.bold, color: kDeepBlue),
            ),
            const SizedBox(height: 20),
            _buildTextField(
                labelText: 'Email Address',
                icon: Icons.email_outlined,
                controller: _emailController),
            _buildTextField(
                labelText: 'Password',
                icon: Icons.lock_outline,
                controller: _passwordController,
                obscureText: true),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(
                      value: _rememberMe,
                      onChanged: (v) =>
                          setState(() => _rememberMe = v ?? false),
                      activeColor: kPrimaryGold,
                    ),
                    const Text('Remember Me'),
                  ],
                ),
                TextButton(
                  onPressed: () =>
                      Navigator.pushNamed(context, '/forgot-password'),
                  child: const Text('Forgot Password?',
                      style: TextStyle(color: kPrimaryGold)),
                ),
              ],
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: _login,
                style: ElevatedButton.styleFrom(
                    backgroundColor: kPrimaryGold,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12))),
                child: const Text('Login',
                    style: TextStyle(color: Colors.white, fontSize: 18)),
              ),
            ),
            const SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Don't have an account?"),
                TextButton(
                  onPressed: () =>
                      Navigator.pushReplacementNamed(context, '/create-account'),
                  child: const Text('Sign Up',
                      style: TextStyle(color: kSecondaryBlue)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
