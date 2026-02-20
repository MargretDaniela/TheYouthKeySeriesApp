import 'package:flutter/material.dart';
import 'package:my_first_app/widgets/module_screen.dart';

class ProfessionalSkillsModule2Screen extends StatelessWidget {
  const ProfessionalSkillsModule2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return ModuleScreen(
      moduleTitle:
          "Module 2: Teamwork & Collaboration\nWorking effectively in teams",

      // ✅ VIDEO
      videoPath: "images/ent_mod1.mp4",

      lessonNotes: const [
        "Learn the importance of teamwork in professional settings.",
        "Understand roles and responsibilities within a team.",
        "Practice conflict resolution and healthy communication.",
        "Build trust through consistency and accountability.",
      ],
      onPreviousPressed: () {
        Navigator.pushNamed(
          context,
          '/courses/professional_skills/module1',
        );
      },
      onNextPressed: () {
        Navigator.pushNamed(
          context,
          '/courses/professional_skills/module3',
        );
      },
    );
  }
}
