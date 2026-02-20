// import 'package:flutter/material.dart';
// import 'package:my_first_app/widgets/module_screen.dart';

// class FinancialModule3Screen extends StatelessWidget {
//   const FinancialModule3Screen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return ModuleScreen(
//       moduleTitle: "Module 3: Understanding Debt & Credit",
//       imagePath: "images/financial.jpg",
//       progressValue: 0.75,
//       progressText: "75%",
//       lessonNotes: const [
//         "What is credit and how it works",
//         "How debt grows with interest",
//         "How to avoid financial traps",
//       ],
//       onPreviousPressed: () {
//         Navigator.pushReplacementNamed(
//           context,
//           "/courses/financial_skills/module2",
//         );
//       },
//       onNextPressed: () {
//         Navigator.pushNamed(
//           context,
//           "/courses/financial_skills/module4",
//         );
//       },
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:my_first_app/widgets/module_screen.dart';

class FinancialModule3Screen extends StatelessWidget {
  const FinancialModule3Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return ModuleScreen(
      moduleTitle: "Module 3: Understanding Debt & Credit",

      // ✅ VIDEO
      videoPath: "images/ent_mod1.mp4",

      lessonNotes: const [
        "What is credit and how it works",
        "How debt grows with interest",
        "How to avoid financial traps",
      ],
      onPreviousPressed: () {
        Navigator.pushReplacementNamed(
          context,
          "/courses/financial_skills/module2",
        );
      },
      onNextPressed: () {
        Navigator.pushNamed(
          context,
          "/courses/financial_skills/module4",
        );
      },
    );
  }
}
