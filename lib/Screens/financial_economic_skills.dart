import 'package:flutter/material.dart';
import 'package:my_first_app/widgets/course_details_screen.dart';

class FinancialEconomicSkillsScreen extends StatelessWidget {
  const FinancialEconomicSkillsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CourseDetailsScreen(
      courseTitle: "Financial & Economic Skills",
      mainIcon: Icons.attach_money,
      rating: 4.6,
      description:
          "Develop personal finance, budgeting, saving, investing, and accounting skills "
          "to build financial confidence and long-term success.",
      modules: [
        CourseModule(
          title: "Module 1: Budgeting Basics",
          subtitle: "Managing money the smart way",
          color: const Color(0xFF2C4E70),
          onTap: () {
            Navigator.pushNamed(
              context,
              '/courses/financial_skills/module1',
            );
          },
        ),
        CourseModule(
          title: "Module 2: Saving & Banking",
          subtitle: "Building a strong foundation",
          color: const Color(0xFF4A90E2),
          onTap: () {
            Navigator.pushNamed(
              context,
              '/courses/financial_skills/module2',
            );
          },
        ),
        CourseModule(
          title: "Module 3: Investing & Growth",
          subtitle: "Making money work for you",
          color: const Color(0xFF4A90E2),
          onTap: () {
            Navigator.pushNamed(
              context,
              '/courses/financial_skills/module3',
            );
          },
        ),
        CourseModule(
          title: "Module 4: Accounting Essentials",
          subtitle: "Tracking income & expenses",
          color: const Color(0xFF4A90E2),
          onTap: () {
            Navigator.pushNamed(
              context,
              '/courses/financial_skills/module4',
            );
          },
        ),
      ],
      onStartPressed: () {
        Navigator.pushNamed(
          context,
          '/courses/financial_skills/module1',
        );
      },
    );
  }
}
