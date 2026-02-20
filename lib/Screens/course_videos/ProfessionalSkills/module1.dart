import 'package:flutter/material.dart';
import 'package:my_first_app/widgets/module_screen.dart';

class ProfessionalSkillsModule1Screen extends StatelessWidget {
  const ProfessionalSkillsModule1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return ModuleScreen(
      moduleTitle:
          "Module 1: Workplace Communication\nEffective communication strategies",

      // ✅ VIDEO
      videoPath: "images/ent_mod1.mp4",

      lessonNotes: const [
        "Learn how to communicate clearly in the workplace.",
        "Understand professional email and meeting etiquette.",
        "Improve active listening and asking the right questions.",
        "Avoid misunderstandings through clarity and tone.",
      ],
      onPreviousPressed: () {
        Navigator.pop(context);
      },
      onNextPressed: () {
        Navigator.pushNamed(
          context,
          '/courses/professional_skills/module2',
        );
      },
    );
  }
}
