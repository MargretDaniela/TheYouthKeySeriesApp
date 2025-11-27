import 'package:flutter/material.dart';
import 'login_screen.dart';

// --- App Colors ---
const Color kPrimaryGold = Color(0xFFAC7D0C);
const Color kDeepBlue = Color(0xFF1A1A1A);
const Color kSecondaryBlue = Color(0xFF004C99);

class ForgotPasswordResetScreen extends StatefulWidget {
  const ForgotPasswordResetScreen({super.key});

  @override
  State<ForgotPasswordResetScreen> createState() =>
      _ForgotPasswordResetScreenState();
}

class _ForgotPasswordResetScreenState
    extends State<ForgotPasswordResetScreen> {
  bool _isPasswordVisible = false;
  bool _isConfirmPasswordVisible = false;

  final TextEditingController _newPasswordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  void _resetPassword() {
    final newPassword = _newPasswordController.text.trim();
    final confirmPassword = _confirmPasswordController.text.trim();

    // --- Simple validation ---
    if (newPassword.isEmpty || confirmPassword.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Please fill in both password fields.'),
          backgroundColor: Colors.red,
        ),
      );
      return;
    }

    if (newPassword != confirmPassword) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Passwords do not match.'),
          backgroundColor: Colors.red,
        ),
      );
      return;
    }

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Password reset successfully!'),
        backgroundColor: kPrimaryGold,
      ),
    );

    // Navigate back to the Login Screen after a short delay
    Future.delayed(const Duration(seconds: 1), () {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (_) => const LoginScreen()),
        (Route<dynamic> route) => false,
      );
    });
  }

  Widget _buildPasswordField({
    required TextEditingController controller,
    required bool isVisible,
    required ValueChanged<bool> toggleVisibility,
    required String labelText,
  }) {
    return TextField(
      controller: controller,
      obscureText: !isVisible,
      decoration: InputDecoration(
        labelText: labelText,
        prefixIcon: const Icon(Icons.lock_outline, color: kPrimaryGold),
        suffixIcon: IconButton(
          icon: Icon(
            isVisible ? Icons.visibility : Icons.visibility_off,
            color: Colors.grey,
          ),
          onPressed: () => toggleVisibility(!isVisible),
        ),
        filled: true,
        fillColor: Colors.grey[100],
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Colors.grey, width: 1),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: kPrimaryGold, width: 2),
        ),
        contentPadding:
            const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
      ),
    );
  }

  @override
  void dispose() {
    _newPasswordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: kPrimaryGold,
        title: const Text(
          'Reset Password',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(Icons.lock_reset, size: 100, color: kSecondaryBlue),
              const SizedBox(height: 20),

              const Text(
                'Reset Your Password',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: kDeepBlue,
                ),
              ),
              const SizedBox(height: 15),

              const Text(
                'Enter your new password below to reset your account credentials.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              const SizedBox(height: 30),

              _buildPasswordField(
                controller: _newPasswordController,
                isVisible: _isPasswordVisible,
                toggleVisibility: (val) =>
                    setState(() => _isPasswordVisible = val),
                labelText: 'Create New Password',
              ),
              const SizedBox(height: 20),

              _buildPasswordField(
                controller: _confirmPasswordController,
                isVisible: _isConfirmPasswordVisible,
                toggleVisibility: (val) =>
                    setState(() => _isConfirmPasswordVisible = val),
                labelText: 'Confirm New Password',
              ),
              const SizedBox(height: 30),

              SizedBox(
                width: double.infinity,
                height: 55,
                child: ElevatedButton(
                  onPressed: _resetPassword,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: kPrimaryGold,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    elevation: 5,
                  ),
                  child: const Text(
                    'Reset Password',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),

              TextButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (_) => const LoginScreen()),
                  );
                },
                child: const Text(
                  'Back to Login',
                  style: TextStyle(
                    color: kSecondaryBlue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
