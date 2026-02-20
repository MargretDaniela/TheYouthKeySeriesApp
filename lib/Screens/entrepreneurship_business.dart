// import 'package:flutter/material.dart';
// import 'package:my_first_app/widgets/course_details_screen.dart';

// class EntrepreneurshipBusinessScreen extends StatelessWidget {
//   const EntrepreneurshipBusinessScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return CourseDetailsScreen(
//       courseTitle: "Entrepreneurship & Business",
//       mainIcon: Icons.business_center,
//       rating: 4.9,
//       description:
//           "Learn how to build, launch, and scale successful businesses "
//           "with real-world entrepreneurial strategies.",
//       modules: [
//         CourseModule(
//           title: "Module 1: Business Ideas",
//           subtitle: "Finding and validating ideas",
//           color: const Color(0xFF2C4E70),
//         ),
//         CourseModule(
//           title: "Module 2: Business Models",
//           subtitle: "How businesses make money",
//           color: const Color(0xFF4A90E2),
//         ),
//         CourseModule(
//           title: "Module 3: Marketing & Sales",
//           subtitle: "Reaching customers effectively",
//           color: const Color(0xFF4A90E2),
//         ),
//         CourseModule(
//           title: "Module 4: Scaling Up",
//           subtitle: "Growing your business",
//           color: const Color(0xFF4A90E2),
//         ),
//       ],
//       onStartPressed: () {},
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:my_first_app/widgets/course_details_screen.dart';

class EntrepreneurshipBusinessScreen extends StatelessWidget {
  const EntrepreneurshipBusinessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CourseDetailsScreen(
      courseTitle: "Entrepreneurship & Business",
      mainIcon: Icons.business_center,
      rating: 4.9,
      description:
          "Learn how to build, launch, and scale successful businesses "
          "with real-world entrepreneurial strategies.",
      modules: [
        CourseModule(
          title: "Module 1: Business Ideas",
          subtitle: "Finding and validating ideas",
          color: const Color(0xFF2C4E70),
          onTap: () {
            Navigator.pushNamed(
              context,
              '/courses/entrepreneurship/module1',
            );
          },
        ),
        CourseModule(
          title: "Module 2: Business Models",
          subtitle: "How businesses make money",
          color: const Color(0xFF4A90E2),
          onTap: () {
            Navigator.pushNamed(
              context,
              '/courses/entrepreneurship/module2',
            );
          },
        ),
        CourseModule(
          title: "Module 3: Marketing & Sales",
          subtitle: "Reaching customers effectively",
          color: const Color(0xFF4A90E2),
          onTap: () {
            Navigator.pushNamed(
              context,
              '/courses/entrepreneurship/module3',
            );
          },
        ),
        CourseModule(
          title: "Module 4: Scaling Up",
          subtitle: "Growing your business",
          color: const Color(0xFF4A90E2),
          onTap: () {
            Navigator.pushNamed(
              context,
              '/courses/entrepreneurship/module4',
            );
          },
        ),
      ],
      onStartPressed: () {
        Navigator.pushNamed(
          context,
          '/courses/entrepreneurship/module1',
        );
      },
    );
  }
}
