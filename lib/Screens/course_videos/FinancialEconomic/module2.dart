
import 'package:flutter/material.dart';
import 'package:my_first_app/widgets/module_screen.dart';

class FinancialModule2Screen extends StatelessWidget {
  const FinancialModule2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return ModuleScreen(
      moduleTitle: "Module 2: Banking & Financial Tools",

      // ✅ VIDEO
      videoPath: "images/ent_mod1.mp4",

      lessonNotes: const [
        "Learn how banks work",
        "Understand debit vs credit cards",
        "Use mobile banking safely",
      ],
      onPreviousPressed: () {
        Navigator.pushReplacementNamed(
          context,
          "/courses/financial_skills/module1",
        );
      },
      onNextPressed: () {
        Navigator.pushNamed(
          context,
          "/courses/financial_skills/module3",
        );
      },
    );
  }
}
