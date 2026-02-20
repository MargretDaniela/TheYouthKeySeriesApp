import 'package:flutter/material.dart';
import 'package:my_first_app/widgets/module_screen.dart';

class Module2Screen extends StatelessWidget {
  const Module2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return ModuleScreen(
      moduleTitle:
          "Module 2: Crafting Your Message –\nStructuring Speeches Effectively",

      // ✅ VIDEO
      videoPath: "images/ent_mod1.mp4",

      lessonNotes: const [
        "Structuring the introduction and conclusion",
        "Organizing main points clearly",
        "Using storytelling effectively",
      ],
      onPreviousPressed: () {
        Navigator.pushNamed(
          context,
          '/courses/mastering_public_speaking/module1',
        );
      },
      onNextPressed: () {
        Navigator.pushNamed(
          context,
          '/courses/mastering_public_speaking/module3',
        );
      },
    );
  }
}
