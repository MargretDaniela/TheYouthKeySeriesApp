// import 'package:flutter/material.dart';
// import '../widgets/bottom_nav.dart';
// import 'mastering_video.dart';

// // =====================
// // COLOR CONSTANTS
// // =====================
// const Color kNavy = Color(0xFF1D3557);
// const Color kGold = Color(0xFFB8860B);
// const Color kLightBg = Color(0xFFF0F2F5);
// const Color kWhite = Colors.white;

// class MasteringPublicSpeakingScreen extends StatelessWidget {
//   const MasteringPublicSpeakingScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: kLightBg,

//       body: Stack(
//         children: [
//           SafeArea(
//             child: ListView(
//               padding: const EdgeInsets.fromLTRB(20, 20, 20, 160),
//               children: [
//                 // Title
//                 const Text(
//                   "Mastering Public Speaking",
//                   style: TextStyle(
//                     fontSize: 28,
//                     fontWeight: FontWeight.bold,
//                     color: kNavy,
//                   ),
//                 ),
//                 const SizedBox(height: 15),

//                 // Main Image
//                 Container(
//                   height: 180,
//                   decoration: BoxDecoration(
//                     color: kWhite,
//                     borderRadius: BorderRadius.circular(15),
//                   ),
//                   child: const Center(
//                     child: Icon(Icons.mic, size: 60, color: kNavy),
//                   ),
//                 ),
//                 const SizedBox(height: 10),

//                 // Rating
//                 const Row(
//                   children: [
//                     Icon(Icons.star, color: kGold, size: 20),
//                     Icon(Icons.star, color: kGold, size: 20),
//                     Icon(Icons.star, color: kGold, size: 20),
//                     Icon(Icons.star_outline, color: kGold, size: 20),
//                     Spacer(),
//                     Text(
//                       "4.8",
//                       style: TextStyle(
//                         fontSize: 20,
//                         fontWeight: FontWeight.bold,
//                         color: kNavy,
//                       ),
//                     ),
//                   ],
//                 ),
//                 const SizedBox(height: 10),

//                 // Description
//                 const Text(
//                   "Course Description: Conquer your fear of public speaking and master the art of communication. "
//                   "Learn techniques to engage any audience and speak confidently.",
//                   style: TextStyle(fontSize: 16, color: Colors.black87),
//                 ),
//                 const SizedBox(height: 25),

//                 // Curriculum
//                 const Text(
//                   "Course Curriculum",
//                   style: TextStyle(
//                     fontSize: 22,
//                     fontWeight: FontWeight.bold,
//                     color: kNavy,
//                   ),
//                 ),
//                 const SizedBox(height: 15),

//                 _buildModule(
//                   "Module 1: Building Confidence",
//                   "Overcoming fear & anxiety",
//                   const Color(0xFF2C4E70),
//                 ),
//                 _buildModule(
//                   "Module 2: Crafting Your Message",
//                   "Structuring speeches effectively",
//                   const Color(0xFF4A90E2),
//                 ),
//                 _buildModule(
//                   "Module 3: Voice & Delivery",
//                   "Using tone, pitch, and pace",
//                   const Color(0xFF4A90E2),
//                 ),
//                 _buildModule(
//                   "Module 4: Audience Engagement",
//                   "Techniques to keep attention",
//                   const Color(0xFF4A90E2),
//                 ),
//                 _buildModule(
//                   "Module 5: Advanced Techniques",
//                   "Persuasion & storytelling",
//                   const Color(0xFF4A90E2),
//                 ),
//               ],
//             ),
//           ),

//           // ✅ START BUTTON — RIGHT SIDE, VERY CLOSE TO NAV
//           Positioned(
//             bottom: kBottomNavigationBarHeight + 2,
//             right: 16,
//             child: ElevatedButton(
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (_) => const YouthKeySeriesScreen(),
//                   ),
//                 );
//               },
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: kGold,
//                 padding:
//                     const EdgeInsets.symmetric(horizontal: 28, vertical: 12),
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(28),
//                 ),
//                 elevation: 3,
//               ),
//               child: const Text(
//                 "Start",
//                 style: TextStyle(
//                   fontSize: 16,
//                   fontWeight: FontWeight.bold,
//                   color: kWhite,
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),

//       // Bottom Navigation
//       bottomNavigationBar: buildBottomNavigationBar(context, 1),
//     );
//   }

//   // =====================
//   // MODULE TILE
//   // =====================
//   Widget _buildModule(String title, String subtitle, Color boxColor) {
//     return Container(
//       margin: const EdgeInsets.only(bottom: 12),
//       padding: const EdgeInsets.all(15),
//       decoration: BoxDecoration(
//         color: kWhite,
//         borderRadius: BorderRadius.circular(12),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.black.withOpacity(0.05),
//             blurRadius: 10,
//             offset: const Offset(0, 4),
//           ),
//         ],
//       ),
//       child: Row(
//         children: [
//           Container(
//             height: 60,
//             width: 60,
//             decoration: BoxDecoration(
//               color: boxColor,
//               borderRadius: BorderRadius.circular(10),
//             ),
//             child: const Icon(Icons.play_circle_fill, color: kWhite),
//           ),
//           const SizedBox(width: 15),
//           Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   title,
//                   style: const TextStyle(
//                     fontWeight: FontWeight.bold,
//                     fontSize: 15,
//                   ),
//                 ),
//                 const SizedBox(height: 4),
//                 Text(
//                   subtitle,
//                   style: const TextStyle(
//                     color: Colors.grey,
//                     fontSize: 13,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:my_first_app/widgets/course_details_screen.dart';

class MasteringPublicSpeakingScreen extends StatelessWidget {
  const MasteringPublicSpeakingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CourseDetailsScreen(
      courseTitle: "Mastering Public Speaking",
      mainIcon: Icons.mic,
      rating: 4.8,
      description:
          "Course Description: Conquer your fear of public speaking and master the art of communication. "
          "Learn techniques to engage any audience and speak confidently.",
      modules: [
        CourseModule(
          title: "Module 1: Building Confidence",
          subtitle: "Overcoming fear & anxiety",
          color: const Color(0xFF2C4E70),
          onTap: () {
            Navigator.pushNamed(
              context,
              '/courses/mastering_public_speaking/module1',
            );
          },
        ),
        CourseModule(
          title: "Module 2: Crafting Your Message",
          subtitle: "Structuring speeches effectively",
          color: const Color(0xFF4A90E2),
          onTap: () {
            Navigator.pushNamed(
              context,
              '/courses/mastering_public_speaking/module2',
            );
          },
        ),
        CourseModule(
          title: "Module 3: Voice & Delivery",
          subtitle: "Using tone, pitch, and pace",
          color: const Color(0xFF4A90E2),
          onTap: () {
            Navigator.pushNamed(
              context,
              '/courses/mastering_public_speaking/module3',
            );
          },
        ),
        CourseModule(
          title: "Module 4: Audience Engagement",
          subtitle: "Techniques to keep attention",
          color: const Color(0xFF4A90E2),
          onTap: () {
            Navigator.pushNamed(
              context,
              '/courses/mastering_public_speaking/module4',
            );
          },
        ),
        CourseModule(
          title: "Module 5: Advanced Techniques",
          subtitle: "Persuasion & storytelling",
          color: const Color(0xFF4A90E2),
          onTap: () {
            Navigator.pushNamed(
              context,
              '/courses/mastering_public_speaking/module5',
            );
          },
        ),
      ],
      onStartPressed: () {
        Navigator.pop(context);
      },
    );
  }
}
