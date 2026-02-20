import 'package:flutter/material.dart';
import 'package:my_first_app/widgets/module_screen.dart';

class Module4Screen extends StatelessWidget {
  const Module4Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return ModuleScreen(
      moduleTitle:
          "Module 4: Audience Engagement –\nTechniques to Keep Attention",

      // ✅ VIDEO
      videoPath: "images/ent_mod1.mp4",

      lessonNotes: const [
        "Reading audience reactions",
        "Interactive engagement techniques",
        "Handling questions effectively",
      ],
      onPreviousPressed: () {
        Navigator.pushNamed(
          context,
          '/courses/mastering_public_speaking/module3',
        );
      },
      onNextPressed: () {
        Navigator.pushNamed(
          context,
          '/courses/mastering_public_speaking/module5',
        );
      },
    );
  }
}
