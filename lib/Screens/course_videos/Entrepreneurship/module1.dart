import 'package:flutter/material.dart';
import 'package:my_first_app/widgets/module_screen.dart';

class EntrepreneurshipModule1Screen extends StatelessWidget {
  const EntrepreneurshipModule1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return ModuleScreen(
      moduleTitle: "Module 1: Business Ideas\nFinding & Validating Ideas",

      // ✅ VIDEO PATH (instead of image)
      videoPath: "images/ent_mod1.mp4",

      lessonNotes: const [
        "Identify problems people are willing to pay to solve.",
        "Validate your idea by talking to real potential customers.",
        "Research competitors and find your unique advantage.",
        "Start small: build a simple version before investing big money.",
      ],
      onPreviousPressed: () {
        Navigator.pop(context);
      },
      onNextPressed: () {
        Navigator.pushNamed(
          context,
          '/courses/entrepreneurship/module2',
        );
      },
    );
  }
}
