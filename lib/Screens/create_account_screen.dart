import 'package:flutter/material.dart';

const Color kPrimaryGold = Color(0xFFAC7D0C);
const Color kDeepBlue = Color(0xFF1A1A1A);
const Color kWhite = Color(0xFFFFFFFF);
const Color kSecondaryBlue = Color(0xFF004C99);

class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({super.key});

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _signUp() {
    if (_firstNameController.text.isEmpty ||
        _lastNameController.text.isEmpty ||
        !_emailController.text.contains('@') ||
        _passwordController.text.length < 6) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text('Please fill all fields correctly.'),
          backgroundColor: Colors.red));
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
          prefixIcon: Icon(icon, color: kPrimaryGold),
          filled: true,
          fillColor: Colors.white,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: Colors.grey)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: kPrimaryGold, width: 2)),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 50),
            Center(
              child: Image.network(
                'images/The_app_Logo.png',
                height: 100,
              ),
            ),
            const SizedBox(height: 30),
            const Text('Create Account',
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: kDeepBlue)),
            const SizedBox(height: 30),
            _buildTextField(
                labelText: 'First Name',
                icon: Icons.person_outline,
                controller: _firstNameController),
            _buildTextField(
                labelText: 'Last Name',
                icon: Icons.person_outline,
                controller: _lastNameController),
            _buildTextField(
                labelText: 'Email Address',
                icon: Icons.email_outlined,
                controller: _emailController),
            _buildTextField(
                labelText: 'Password',
                icon: Icons.lock_outline,
                controller: _passwordController,
                obscureText: true),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: _signUp,
                style: ElevatedButton.styleFrom(
                    backgroundColor: kPrimaryGold,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12))),
                child: const Text('Sign Up',
                    style: TextStyle(color: kWhite, fontSize: 18)),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Already have an account?'),
                TextButton(
                    onPressed: () => Navigator.pushReplacementNamed(
                        context, '/login'),
                    child: const Text('Login',
                        style: TextStyle(color: kSecondaryBlue))),
              ],
            )
          ],
        ),
      ),
    );
  }
}
