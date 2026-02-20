// import 'package:flutter/material.dart';
// import 'package:my_first_app/widgets/module_screen.dart';

// class EntrepreneurshipModule4Screen extends StatelessWidget {
//   const EntrepreneurshipModule4Screen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return ModuleScreen(
//       moduleTitle: "Module 4: Scaling Up\nGrowing Your Business",
//       imagePath: "images/entrepreneurship.jpg",
//       progressValue: 1.0,
//       progressText: "100%",
//       lessonNotes: const [
//         "Scaling means increasing revenue without increasing costs at the same rate.",
//         "Build systems: workflows, templates, and automation.",
//         "Hire help when demand grows: delegate tasks you can’t scale alone.",
//         "Track your numbers: sales, expenses, customer retention, and profit.",
//       ],
//       onPreviousPressed: () {
//         Navigator.pushNamed(
//           context,
//           '/courses/entrepreneurship/module3',
//         );
//       },
//       onNextPressed: () {
//         Navigator.pop(context);
//       },
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:my_first_app/widgets/module_screen.dart';

class EntrepreneurshipModule4Screen extends StatelessWidget {
  const EntrepreneurshipModule4Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return ModuleScreen(
      moduleTitle: "Module 4: Scaling Up\nGrowing Your Business",

      // ✅ VIDEO PATH
      videoPath: "images/ent_mod1.mp4",

      lessonNotes: const [
        "Scaling means increasing revenue without increasing costs at the same rate.",
        "Build systems: workflows, templates, and automation.",
        "Hire help when demand grows: delegate tasks you can’t scale alone.",
        "Track your numbers: sales, expenses, customer retention, and profit.",
      ],
      onPreviousPressed: () {
        Navigator.pushNamed(
          context,
          '/courses/entrepreneurship/module3',
        );
      },
      onNextPressed: () {
        Navigator.pop(context);
      },
    );
  }
}
