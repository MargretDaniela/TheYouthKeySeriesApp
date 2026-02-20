// import 'package:flutter/material.dart';
// import 'package:my_first_app/widgets/course_details_screen.dart';

// class ProfessionalSkillsDevelopmentScreen extends StatelessWidget {
//   const ProfessionalSkillsDevelopmentScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return CourseDetailsScreen(
//       courseTitle: "Professional Skills Development",
//       mainIcon: Icons.work,
//       rating: 4.7,
//       description:
//           "Enhance teamwork, leadership, communication, and career growth skills "
//           "to succeed in professional environments.",
//       modules: [
//         CourseModule(
//           title: "Module 1: Workplace Communication",
//           subtitle: "Effective communication strategies",
//           color: const Color(0xFF2C4E70),
//         ),
//         CourseModule(
//           title: "Module 2: Teamwork & Collaboration",
//           subtitle: "Working effectively in teams",
//           color: const Color(0xFF4A90E2),
//         ),
//         CourseModule(
//           title: "Module 3: Leadership Skills",
//           subtitle: "Becoming an effective leader",
//           color: const Color(0xFF4A90E2),
//         ),
//         CourseModule(
//           title: "Module 4: Career Growth",
//           subtitle: "Planning long-term success",
//           color: const Color(0xFF4A90E2),
//         ),
//       ],
//       onStartPressed: () {
//         // TODO: navigate to lessons / videos
//       },
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:my_first_app/widgets/course_details_screen.dart';

class ProfessionalSkillsDevelopmentScreen extends StatelessWidget {
  const ProfessionalSkillsDevelopmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CourseDetailsScreen(
      courseTitle: "Professional Skills Development",
      mainIcon: Icons.work,
      rating: 4.7,
      description:
          "Enhance teamwork, leadership, communication, and career growth skills "
          "to succeed in professional environments.",
      modules: [
        // =====================
        // MODULE 1
        // =====================
        CourseModule(
          title: "Module 1: Workplace Communication",
          subtitle: "Effective communication strategies",
          color: const Color(0xFF2C4E70),
          onTap: () {
            Navigator.pushNamed(
              context,
              '/courses/professional_skills/module1',
            );
          },
        ),

        // =====================
        // MODULE 2
        // =====================
        CourseModule(
          title: "Module 2: Teamwork & Collaboration",
          subtitle: "Working effectively in teams",
          color: const Color(0xFF4A90E2),
          onTap: () {
            Navigator.pushNamed(
              context,
              '/courses/professional_skills/module2',
            );
          },
        ),

        // =====================
        // MODULE 3
        // =====================
        CourseModule(
          title: "Module 3: Leadership Skills",
          subtitle: "Becoming an effective leader",
          color: const Color(0xFF4A90E2),
          onTap: () {
            Navigator.pushNamed(
              context,
              '/courses/professional_skills/module3',
            );
          },
        ),

        // =====================
        // MODULE 4
        // =====================
        CourseModule(
          title: "Module 4: Career Growth",
          subtitle: "Planning long-term success",
          color: const Color(0xFF4A90E2),
          onTap: () {
            Navigator.pushNamed(
              context,
              '/courses/professional_skills/module4',
            );
          },
        ),
      ],
      onStartPressed: () {
        Navigator.pushNamed(
          context,
          '/courses/professional_skills/module1',
        );
      },
    );
  }
}
