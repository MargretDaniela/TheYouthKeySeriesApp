import 'package:flutter/material.dart';
import 'package:my_first_app/widgets/module_screen.dart';

class Module1Screen extends StatelessWidget {
  const Module1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return ModuleScreen(
      moduleTitle: "Module 1: Building Confidence –\nCrafting Your Message",

      // ✅ VIDEO
      videoPath: "images/ent_mod1.mp4",

      lessonNotes: const [
        "Body Language: Vils the we to fitnts withot",
        "Voice Modulation: Thastle anthings hais",
        "Audience Engagement: The bod the tyipr t and weile isly",
      ],
      onPreviousPressed: () {
        Navigator.pop(context);
      },
      onNextPressed: () {
        Navigator.pushNamed(
          context,
          '/courses/mastering_public_speaking/module2',
        );
      },
    );
  }
}
