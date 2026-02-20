// import 'package:flutter/material.dart';
// import 'package:my_first_app/widgets/module_screen.dart';

// class FinancialModule4Screen extends StatelessWidget {
//   const FinancialModule4Screen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return ModuleScreen(
//       moduleTitle: "Module 4: Investing & Long-Term Planning",
//       imagePath: "images/financial.jpg",
//       progressValue: 1.0,
//       progressText: "100%",
//       lessonNotes: const [
//         "Understand investing basics",
//         "Learn about risk vs reward",
//         "Plan for long-term goals",
//       ],
//       onPreviousPressed: () {
//         Navigator.pushReplacementNamed(
//           context,
//           "/courses/financial_skills/module3",
//         );
//       },
//       onNextPressed: () {
//         // After module 4, go back to course details
//         Navigator.pushNamedAndRemoveUntil(
//           context,
//           "/courses/financial_skills",
//           (route) => false,
//         );
//       },
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:my_first_app/widgets/module_screen.dart';

class FinancialModule4Screen extends StatelessWidget {
  const FinancialModule4Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return ModuleScreen(
      moduleTitle: "Module 4: Investing & Long-Term Planning",

      // ✅ VIDEO
      videoPath: "images/ent_mod1.mp4",

      lessonNotes: const [
        "Understand investing basics",
        "Learn about risk vs reward",
        "Plan for long-term goals",
      ],
      onPreviousPressed: () {
        Navigator.pushReplacementNamed(
          context,
          "/courses/financial_skills/module3",
        );
      },
      onNextPressed: () {
        Navigator.pushNamedAndRemoveUntil(
          context,
          "/courses/financial_skills",
          (route) => false,
        );
      },
    );
  }
}
