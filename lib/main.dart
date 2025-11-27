import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';
import 'screens/login_screen.dart';
import 'screens/forgot_password_email_screen.dart';
import 'screens/verification_code_screen.dart';
import 'screens/forgot_password_reset_screen.dart';
import 'screens/create_account_screen.dart';
import 'screens/registration_success_screen.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'K.E.Y Series App',
      theme: ThemeData(primaryColor: const Color(0xFFAC7D0C)),
      // initialRoute: '/login',
      routes: {
        '/': (context) => const SplashScreen(),
        '/login': (context) => const LoginScreen(),
        '/create-account': (context) => const CreateAccountScreen(),
        '/forgot-password': (context) => const ForgotPasswordEmailScreen(),
        '/verify-code': (context) => const VerificationCodeScreen(),
        '/reset-password': (context) => const ForgotPasswordResetScreen(),
        '/registration-success': (context) => const RegistrationSuccessScreen(),
        '/home': (context) => const HomeScreen(),
      },
    );
  }
}
