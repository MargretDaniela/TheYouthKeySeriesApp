import 'package:flutter/material.dart';
import 'package:my_first_app/widgets/module_screen.dart';

class Module3Screen extends StatelessWidget {
  const Module3Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return ModuleScreen(
      moduleTitle: "Module 3: Voice & Delivery –\nUsing Tone, Pitch, and Pace",

      // ✅ VIDEO
      videoPath: "images/ent_mod1.mp4",

      lessonNotes: const [
        "Voice projection and clarity",
        "Using pauses for emphasis",
        "Adjusting tone for audience engagement",
      ],
      onPreviousPressed: () {
        Navigator.pushNamed(
          context,
          '/courses/mastering_public_speaking/module2',
        );
      },
      onNextPressed: () {
        Navigator.pushNamed(
          context,
          '/courses/mastering_public_speaking/module4',
        );
      },
    );
  }
}
