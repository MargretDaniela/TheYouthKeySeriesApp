// import 'package:flutter/material.dart';
// import 'package:my_first_app/widgets/module_screen.dart';

// class EntrepreneurshipModule3Screen extends StatelessWidget {
//   const EntrepreneurshipModule3Screen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return ModuleScreen(
//       moduleTitle: "Module 3: Marketing & Sales\nReaching Customers Effectively",
//       imagePath: "images/entrepreneurship.jpg",
//       progressValue: 0.75,
//       progressText: "75%",
//       lessonNotes: const [
//         "Marketing attracts attention; sales converts attention into paying customers.",
//         "Know your target customer: age, needs, goals, and problems.",
//         "Use social media to build trust and visibility consistently.",
//         "Learn how to pitch clearly: problem → solution → benefits → price.",
//       ],
//       onPreviousPressed: () {
//         Navigator.pushNamed(
//           context,
//           '/courses/entrepreneurship/module2',
//         );
//       },
//       onNextPressed: () {
//         Navigator.pushNamed(
//           context,
//           '/courses/entrepreneurship/module4',
//         );
//       },
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:my_first_app/widgets/module_screen.dart';

class EntrepreneurshipModule3Screen extends StatelessWidget {
  const EntrepreneurshipModule3Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return ModuleScreen(
      moduleTitle: "Module 3: Marketing & Sales\nReaching Customers Effectively",

      // ✅ VIDEO PATH
      videoPath: "images/ent_mod1.mp4",

      lessonNotes: const [
        "Marketing attracts attention; sales converts attention into paying customers.",
        "Know your target customer: age, needs, goals, and problems.",
        "Use social media to build trust and visibility consistently.",
        "Learn how to pitch clearly: problem → solution → benefits → price.",
      ],
      onPreviousPressed: () {
        Navigator.pushNamed(
          context,
          '/courses/entrepreneurship/module2',
        );
      },
      onNextPressed: () {
        Navigator.pushNamed(
          context,
          '/courses/entrepreneurship/module4',
        );
      },
    );
  }
}
