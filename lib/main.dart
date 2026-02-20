
// import 'package:flutter/material.dart';

// // =====================
// // SCREENS
// // =====================
// import 'screens/splash_screen.dart';
// import 'screens/login_screen.dart';
// import 'screens/forgot_password_email_screen.dart';
// import 'screens/verification_code_screen.dart';
// import 'screens/forgot_password_reset_screen.dart';
// import 'screens/create_account_screen.dart';
// import 'screens/registration_success_screen.dart';
// import 'screens/home_screen.dart';
// import 'screens/courses.dart';
// import 'screens/search_screen.dart';
// import 'screens/course_videos/ProfessionalSkills/module1.dart';
// import 'screens/course_videos/ProfessionalSkills/module2.dart';
// import 'screens/course_videos/ProfessionalSkills/module3.dart';
// import 'screens/course_videos/ProfessionalSkills/module4.dart';


// // =====================
// // COURSE SCREENS
// // =====================
// import 'screens/mastering_public_speaking.dart';
// import 'screens/professional_skills_development.dart';
// import 'screens/entrepreneurship_business.dart';

// // =====================
// // MODULE SCREENS
// // =====================
// import 'screens/course_videos/mastering_public_speaking/module1.dart';
// import 'screens/course_videos/mastering_public_speaking/module2.dart';
// import 'screens/course_videos/mastering_public_speaking/module3.dart';
// import 'screens/course_videos/mastering_public_speaking/module4.dart';
// import 'screens/course_videos/mastering_public_speaking/module5.dart'; // new module

// import 'screens/course_videos/Entrepreneurship/module1.dart';
// import 'screens/course_videos/Entrepreneurship/module2.dart';
// import 'screens/course_videos/Entrepreneurship/module3.dart';
// import 'screens/course_videos/Entrepreneurship/module4.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'K.E.Y Series App',
//       theme: ThemeData(
//         primaryColor: const Color(0xFFAC7D0C),
//         colorScheme: ColorScheme.fromSwatch().copyWith(
//           secondary: const Color(0xFF004C99),
//         ),
//       ),
//       initialRoute: '/',
//       routes: {
//         '/': (context) => const SplashScreen(),
//         '/login': (context) => const LoginScreen(),
//         '/create-account': (context) => const CreateAccountScreen(),
//         '/forgot-password': (context) =>
//             const ForgotPasswordEmailScreen(),
//         '/verify-code': (context) =>
//             const VerificationCodeScreen(),
//         '/reset-password': (context) =>
//             const ForgotPasswordResetScreen(),
//         '/registration-success': (context) =>
//             const RegistrationSuccessScreen(),
//         '/home': (context) => const HomeScreen(),
//         '/courses': (context) => const AllCoursesScreen(),
//         '/search': (context) => const SearchScreen(),

//         // COURSE ROUTES
//         '/courses/mastering_public_speaking': (context) =>
//             const MasteringPublicSpeakingScreen(),
//         '/courses/professional_skills': (context) =>
//             const ProfessionalSkillsDevelopmentScreen(),
//         '/courses/entrepreneurship': (context) =>
//             const EntrepreneurshipBusinessScreen(),

//         // MODULE ROUTES
//         '/courses/mastering_public_speaking/module1': (context) =>
//             const Module1Screen(),
//         '/courses/mastering_public_speaking/module2': (context) =>
//             const Module2Screen(),
//         '/courses/mastering_public_speaking/module3': (context) =>
//             const Module3Screen(),
//         '/courses/mastering_public_speaking/module4': (context) =>
//             const Module4Screen(),
//         '/courses/mastering_public_speaking/module5': (context) =>
//             const Module5Screen(), // new module route

//           // =====================
// // PROFESSIONAL SKILLS MODULE ROUTES
// // =====================
// '/courses/professional_skills/module1': (context) =>
//     const ProfessionalSkillsModule1Screen(),

// '/courses/professional_skills/module2': (context) =>
//     const ProfessionalSkillsModule2Screen(),

// '/courses/professional_skills/module3': (context) =>
//     const ProfessionalSkillsModule3Screen(),

// '/courses/professional_skills/module4': (context) =>
//     const ProfessionalSkillsModule4Screen(),

//   '/courses/entrepreneurship/module1': (context) =>
//     const EntrepreneurshipModule1Screen(),

// '/courses/entrepreneurship/module2': (context) =>
//     const EntrepreneurshipModule2Screen(),

// '/courses/entrepreneurship/module3': (context) =>
//     const EntrepreneurshipModule3Screen(),

// '/courses/entrepreneurship/module4': (context) =>
//     const EntrepreneurshipModule4Screen(),


//       },
//     );
//   }
// }


import 'package:flutter/material.dart';

// =====================
// SCREENS
// =====================
import 'Screens/splash_screen.dart';
import 'Screens/login_screen.dart';
import 'Screens/forgot_password_email_screen.dart';
import 'Screens/verification_code_screen.dart';
import 'Screens/forgot_password_reset_screen.dart';
import 'Screens/create_account_screen.dart';
import 'Screens/registration_success_screen.dart';
import 'Screens/home_screen.dart';
import 'Screens/search_screen.dart';

// =====================
// ALL COURSES SCREEN
// =====================
import 'Screens/courses.dart';

// =====================
// COURSE SCREENS
// =====================
import 'Screens/mastering_public_speaking.dart';
import 'Screens/professional_skills_development.dart';
import 'Screens/entrepreneurship_business.dart';
import 'Screens/financial_economic_skills.dart'; // ✅ FIXED PATH

// =====================
// MASTERING PUBLIC SPEAKING MODULES
// =====================
import 'Screens/course_videos/mastering_public_speaking/module1.dart';
import 'Screens/course_videos/mastering_public_speaking/module2.dart';
import 'Screens/course_videos/mastering_public_speaking/module3.dart';
import 'Screens/course_videos/mastering_public_speaking/module4.dart';
import 'Screens/course_videos/mastering_public_speaking/module5.dart';

// =====================
// PROFESSIONAL SKILLS MODULES
// =====================
import 'Screens/course_videos/ProfessionalSkills/module1.dart';
import 'Screens/course_videos/ProfessionalSkills/module2.dart';
import 'Screens/course_videos/ProfessionalSkills/module3.dart';
import 'Screens/course_videos/ProfessionalSkills/module4.dart';

// =====================
// ENTREPRENEURSHIP MODULES
// =====================
import 'Screens/course_videos/Entrepreneurship/module1.dart';
import 'Screens/course_videos/Entrepreneurship/module2.dart';
import 'Screens/course_videos/Entrepreneurship/module3.dart';
import 'Screens/course_videos/Entrepreneurship/module4.dart';

// =====================
// FINANCIAL & ECONOMIC MODULES (YOUR REAL PATHS)
// =====================
import 'Screens/course_videos/FinancialEconomic/module1.dart';
import 'Screens/course_videos/FinancialEconomic/module2.dart';
import 'Screens/course_videos/FinancialEconomic/module3.dart';
import 'Screens/course_videos/FinancialEconomic/module4.dart';

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
      theme: ThemeData(
        primaryColor: const Color(0xFFAC7D0C),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: const Color(0xFF004C99),
        ),
      ),

      initialRoute: '/',

      routes: {
        // =====================
        // AUTH / MAIN ROUTES
        // =====================
        '/': (context) => const SplashScreen(),
        '/login': (context) => const LoginScreen(),
        '/create-account': (context) => const CreateAccountScreen(),
        '/forgot-password': (context) => const ForgotPasswordEmailScreen(),
        '/verify-code': (context) => const VerificationCodeScreen(),
        '/reset-password': (context) => const ForgotPasswordResetScreen(),
        '/registration-success': (context) =>
            const RegistrationSuccessScreen(),
        '/home': (context) => const HomeScreen(),
        '/search': (context) => const SearchScreen(),

        // =====================
        // ALL COURSES
        // =====================
        '/courses': (context) => const AllCoursesScreen(),

        // =====================
        // COURSE ROUTES
        // =====================
        '/courses/mastering_public_speaking': (context) =>
            const MasteringPublicSpeakingScreen(),

        '/courses/professional_skills': (context) =>
            const ProfessionalSkillsDevelopmentScreen(),

        '/courses/entrepreneurship': (context) =>
            const EntrepreneurshipBusinessScreen(),

        // ✅ FINANCIAL COURSE ROUTE
        '/courses/financial_skills': (context) =>
            const FinancialEconomicSkillsScreen(),

        // =====================
        // MASTERING PUBLIC SPEAKING MODULE ROUTES
        // =====================
        '/courses/mastering_public_speaking/module1': (context) =>
            const Module1Screen(),
        '/courses/mastering_public_speaking/module2': (context) =>
            const Module2Screen(),
        '/courses/mastering_public_speaking/module3': (context) =>
            const Module3Screen(),
        '/courses/mastering_public_speaking/module4': (context) =>
            const Module4Screen(),
        '/courses/mastering_public_speaking/module5': (context) =>
            const Module5Screen(),

        // =====================
        // PROFESSIONAL SKILLS MODULE ROUTES
        // =====================
        '/courses/professional_skills/module1': (context) =>
            const ProfessionalSkillsModule1Screen(),
        '/courses/professional_skills/module2': (context) =>
            const ProfessionalSkillsModule2Screen(),
        '/courses/professional_skills/module3': (context) =>
            const ProfessionalSkillsModule3Screen(),
        '/courses/professional_skills/module4': (context) =>
            const ProfessionalSkillsModule4Screen(),

        // =====================
        // ENTREPRENEURSHIP MODULE ROUTES
        // =====================
        '/courses/entrepreneurship/module1': (context) =>
            const EntrepreneurshipModule1Screen(),
        '/courses/entrepreneurship/module2': (context) =>
            const EntrepreneurshipModule2Screen(),
        '/courses/entrepreneurship/module3': (context) =>
            const EntrepreneurshipModule3Screen(),
        '/courses/entrepreneurship/module4': (context) =>
            const EntrepreneurshipModule4Screen(),

        // =====================
        // FINANCIAL & ECONOMIC MODULE ROUTES
        // =====================
        '/courses/financial_skills/module1': (context) =>
            const FinancialModule1Screen(),
        '/courses/financial_skills/module2': (context) =>
            const FinancialModule2Screen(),
        '/courses/financial_skills/module3': (context) =>
            const FinancialModule3Screen(),
        '/courses/financial_skills/module4': (context) =>
            const FinancialModule4Screen(),
      },
    );
  }
}
