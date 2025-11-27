import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; // For TextInputFormatter
import 'forgot_password_reset_screen.dart'; // Navigate here on success
import 'forgot_password_email_screen.dart'; // Navigate back

// --- App Colors ---
const Color kPrimaryGold = Color(0xFFAC7D0C);
const Color kDeepBlue = Color(0xFF1A1A1A);
const Color kSecondaryBlue = Color(0xFF004C99);

class VerificationCodeScreen extends StatefulWidget {
  const VerificationCodeScreen({super.key});

  @override
  State<VerificationCodeScreen> createState() => _VerificationCodeScreenState();
}

class _VerificationCodeScreenState extends State<VerificationCodeScreen> {
  // Controllers for the 6 input fields
  final List<TextEditingController> _controllers = 
      List.generate(6, (_) => TextEditingController());
  
  // Focus nodes to move focus automatically
  final List<FocusNode> _focusNodes = List.generate(6, (_) => FocusNode());

  @override
  void dispose() {
    for (var controller in _controllers) {
      controller.dispose();
    }
    for (var node in _focusNodes) {
      node.dispose();
    }
    super.dispose();
  }

  // Helper method to move focus to the next field
  void _nextField({required String value, required int index}) {
    if (value.length == 1 && index < 5) {
      _focusNodes[index + 1].requestFocus();
    }
    // If we're on the last field and a value is entered, check if all are filled
    if (index == 5 && value.isNotEmpty) {
      _verifyCode();
    }
  }

  // Helper method to move focus to the previous field on backspace/delete
  void _previousField({required String value, required int index}) {
    if (value.isEmpty && index > 0) {
      _focusNodes[index - 1].requestFocus();
    }
  }

  // Placeholder for the verification logic
  void _verifyCode() {
    final code = _controllers.map((c) => c.text).join();
    if (code.length == 6) {
      // Successful verification logic
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Code verified! Redirecting to password reset...'),
          backgroundColor: kPrimaryGold,
        ),
      );
      
      // Navigate to the ForgotPasswordResetScreen using a named route
      Future.delayed(const Duration(milliseconds: 800), () {
        Navigator.pushReplacementNamed(context, '/reset-password');
      });
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Please enter the full 6-digit code.'),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: kDeepBlue),
          onPressed: () {
            // Navigate back to the email input screen
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              // --- Logo/Icon ---
              Icon(Icons.lock_open, size: 100, color: kPrimaryGold),
              const SizedBox(height: 20),

              // --- Title ---
              const Text(
                'Verify Your Account',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: kDeepBlue,
                ),
              ),
              const SizedBox(height: 10),

              // --- Description ---
              const Text(
                'We have sent a 6-digit verification code to your email. Please enter it below.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              const SizedBox(height: 40),

              // --- OTP Input Fields ---
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(6, (index) {
                  return SizedBox(
                    width: 50,
                    child: TextField(
                      controller: _controllers[index],
                      focusNode: _focusNodes[index],
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      maxLength: 1,
                      style: const TextStyle(
                          fontSize: 24, fontWeight: FontWeight.bold),
                      decoration: InputDecoration(
                        counterText: "", // Hide character counter
                        contentPadding: const EdgeInsets.all(10),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide:
                              const BorderSide(color: Colors.grey, width: 1),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide:
                              const BorderSide(color: kPrimaryGold, width: 2),
                        ),
                      ),
                      onChanged: (value) {
                        // Handle moving focus forward (when a digit is typed)
                        _nextField(value: value, index: index);
                        // Handle moving focus backward (when backspace is used)
                        if (value.isEmpty) {
                            _previousField(value: value, index: index);
                        }
                      },
                      // Ensure only digits can be entered
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    ),
                  );
                }),
              ),
              const SizedBox(height: 30),

              // --- Verify Button ---
              SizedBox(
                width: double.infinity,
                height: 55,
                child: ElevatedButton(
                  onPressed: _verifyCode,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: kPrimaryGold,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    elevation: 5,
                  ),
                  child: const Text(
                    'Verify Code',
                    style: TextStyle(
                      fontSize: 18,
                      color: kDeepBlue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // --- Resend Code Link ---
              TextButton(
                onPressed: () {
                  // TODO: Implement resend code logic
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Resending code... (Logic not implemented)'),
                      backgroundColor: kSecondaryBlue,
                    ),
                  );
                },
                child: const Text(
                  'Resend Code',
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