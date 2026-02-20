import 'package:flutter/material.dart';
import 'package:my_first_app/widgets/module_screen.dart';

class Module5Screen extends StatelessWidget {
  const Module5Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return ModuleScreen(
      moduleTitle: "Module 5: Advanced Techniques –\nPersuasion & Storytelling",

      // ✅ VIDEO
      videoPath: "images/ent_mod1.mp4",

      lessonNotes: const [
        "Advanced storytelling techniques",
        "Persuasive communication strategies",
        "Engaging and influencing your audience",
      ],
      onPreviousPressed: () {
        Navigator.pushNamed(
          context,
          '/courses/mastering_public_speaking/module4',
        );
      },
      onNextPressed: () {
        Navigator.pop(context);
      },
    );
  }
}
