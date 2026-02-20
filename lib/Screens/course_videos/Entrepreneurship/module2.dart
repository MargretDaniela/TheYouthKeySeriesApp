import 'package:flutter/material.dart';
import 'package:my_first_app/widgets/module_screen.dart';

class EntrepreneurshipModule2Screen extends StatelessWidget {
  const EntrepreneurshipModule2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return ModuleScreen(
      moduleTitle: "Module 2: Business Models\nHow Businesses Make Money",

      // ✅ VIDEO PATH
      videoPath: "images/ent_mod1.mp4",

      lessonNotes: const [
        "A business model explains how your business creates value and earns revenue.",
        "Common models: subscription, retail, service-based, and marketplace.",
        "Understand your costs: fixed costs vs variable costs.",
        "Focus on profit: revenue must be higher than expenses long-term.",
      ],
      onPreviousPressed: () {
        Navigator.pushNamed(
          context,
          '/courses/entrepreneurship/module1',
        );
      },
      onNextPressed: () {
        Navigator.pushNamed(
          context,
          '/courses/entrepreneurship/module3',
        );
      },
    );
  }
}
