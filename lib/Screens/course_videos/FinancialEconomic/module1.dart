// import 'package:flutter/material.dart';
// import 'package:my_first_app/widgets/module_screen.dart';

// class FinancialModule1Screen extends StatelessWidget {
//   const FinancialModule1Screen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return ModuleScreen(
//       moduleTitle: "Module 1: Personal Budgeting & Saving",
//       imagePath: "images/financial.jpg",
//       progressValue: 0.25,
//       progressText: "25%",
//       lessonNotes: const [
//         "Understand income vs expenses",
//         "Create a monthly budget plan",
//         "Learn how to track spending",
//       ],
//       onPreviousPressed: () {
//         Navigator.pop(context);
//       },
//       onNextPressed: () {
//         Navigator.pushNamed(
//           context,
//           "/courses/financial_skills/module2",
//         );
//       },
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:my_first_app/widgets/module_screen.dart';

class FinancialModule1Screen extends StatelessWidget {
  const FinancialModule1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return ModuleScreen(
      moduleTitle: "Module 1: Personal Budgeting & Saving",

      // ✅ VIDEO
      videoPath: "images/ent_mod1.mp4",

      lessonNotes: const [
        "Understand income vs expenses",
        "Create a monthly budget plan",
        "Learn how to track spending",
      ],
      onPreviousPressed: () {
        Navigator.pop(context);
      },
      onNextPressed: () {
        Navigator.pushNamed(
          context,
          "/courses/financial_skills/module2",
        );
      },
    );
  }
}
