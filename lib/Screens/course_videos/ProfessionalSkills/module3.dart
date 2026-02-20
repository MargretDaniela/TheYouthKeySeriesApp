import 'package:flutter/material.dart';
import 'package:my_first_app/widgets/module_screen.dart';

class ProfessionalSkillsModule3Screen extends StatelessWidget {
  const ProfessionalSkillsModule3Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return ModuleScreen(
      moduleTitle: "Module 3: Leadership Skills\nBecoming an effective leader",

      // ✅ VIDEO
      videoPath: "images/ent_mod1.mp4",

      lessonNotes: const [
        "Learn what leadership means (even without a title).",
        "Develop confidence, responsibility, and decision-making.",
        "Understand how to motivate and inspire others.",
        "Learn how to lead through integrity and example.",
      ],
      onPreviousPressed: () {
        Navigator.pushNamed(
          context,
          '/courses/professional_skills/module2',
        );
      },
      onNextPressed: () {
        Navigator.pushNamed(
          context,
          '/courses/professional_skills/module4',
        );
      },
    );
  }
}
