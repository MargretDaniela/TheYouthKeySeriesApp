import 'package:flutter/material.dart';
import 'package:my_first_app/widgets/module_screen.dart';

class ProfessionalSkillsModule4Screen extends StatelessWidget {
  const ProfessionalSkillsModule4Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return ModuleScreen(
      moduleTitle: "Module 4: Career Growth\nPlanning long-term success",

      // ✅ VIDEO
      videoPath: "images/ent_mod1.mp4",

      lessonNotes: const [
        "Learn how to set realistic career goals.",
        "Understand growth mindset and lifelong learning.",
        "Build a personal development plan.",
        "Learn how to create opportunities through networking.",
      ],
      onPreviousPressed: () {
        Navigator.pushNamed(
          context,
          '/courses/professional_skills/module3',
        );
      },
      onNextPressed: () {
        Navigator.pushNamed(context, '/courses/professional_skills');
      },
    );
  }
}
