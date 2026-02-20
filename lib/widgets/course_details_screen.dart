// import 'package:flutter/material.dart';
// import '../widgets/bottom_nav.dart';

// // =====================
// // COLOR CONSTANTS
// // =====================
// const Color kNavy = Color(0xFF1D3557);
// const Color kGold = Color(0xFFB8860B);
// const Color kLightBg = Color(0xFFF0F2F5);
// const Color kWhite = Colors.white;

// // =====================
// // MODEL FOR MODULE
// // =====================
// class CourseModule {
//   final String title;
//   final String subtitle;
//   final Color color;
//   final VoidCallback? onTap; // Optional callback

//   CourseModule({
//     required this.title,
//     required this.subtitle,
//     required this.color,
//     this.onTap,
//   });
// }

// // =====================
// // REUSABLE COURSE SCREEN
// // =====================
// class CourseDetailsScreen extends StatelessWidget {
//   final String courseTitle;
//   final IconData mainIcon;
//   final double rating;
//   final String description;
//   final List<CourseModule> modules;
//   final VoidCallback onStartPressed;

//   const CourseDetailsScreen({
//     super.key,
//     required this.courseTitle,
//     required this.mainIcon,
//     required this.rating,
//     required this.description,
//     required this.modules,
//     required this.onStartPressed,
//   });

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
//                 // =====================
//                 // TITLE WITH BACK ARROW
//                 // =====================
//                 Row(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     GestureDetector(
//                       onTap: () {
//                         Navigator.pop(context);
//                       },
//                       child: const Icon(
//                         Icons.arrow_back_ios_new,
//                         size: 20,
//                         color: kNavy,
//                       ),
//                     ),
//                     const SizedBox(width: 8),
//                     Expanded(
//                       child: Text(
//                         courseTitle,
//                         style: const TextStyle(
//                           fontSize: 28,
//                           fontWeight: FontWeight.bold,
//                           color: kNavy,
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//                 const SizedBox(height: 15),

//                 // =====================
//                 // MAIN ICON
//                 // =====================
//                 Container(
//                   height: 180,
//                   decoration: BoxDecoration(
//                     color: kWhite,
//                     borderRadius: BorderRadius.circular(15),
//                   ),
//                   child: Center(
//                     child: Icon(mainIcon, size: 60, color: kNavy),
//                   ),
//                 ),
//                 const SizedBox(height: 10),

//                 // =====================
//                 // RATING
//                 // =====================
//                 Row(
//                   children: [
//                     const Icon(Icons.star, color: kGold, size: 20),
//                     const Icon(Icons.star, color: kGold, size: 20),
//                     const Icon(Icons.star, color: kGold, size: 20),
//                     const Icon(Icons.star_outline, color: kGold, size: 20),
//                     const Spacer(),
//                     Text(
//                       rating.toString(),
//                       style: const TextStyle(
//                         fontSize: 20,
//                         fontWeight: FontWeight.bold,
//                         color: kNavy,
//                       ),
//                     ),
//                   ],
//                 ),
//                 const SizedBox(height: 10),

//                 // =====================
//                 // DESCRIPTION
//                 // =====================
//                 Text(
//                   description,
//                   style: const TextStyle(
//                     fontSize: 16,
//                     color: Colors.black87,
//                   ),
//                 ),
//                 const SizedBox(height: 25),

//                 // =====================
//                 // CURRICULUM
//                 // =====================
//                 const Text(
//                   "Course Curriculum",
//                   style: TextStyle(
//                     fontSize: 22,
//                     fontWeight: FontWeight.bold,
//                     color: kNavy,
//                   ),
//                 ),
//                 const SizedBox(height: 15),

//                 // =====================
//                 // MODULES
//                 // =====================
//                 ...modules.map(
//                   (module) => _buildModule(
//                     module.title,
//                     module.subtitle,
//                     module.color,
//                     module.onTap, // ← Pass the onTap callback here
//                   ),
//                 ),
//               ],
//             ),
//           ),

//           // =====================
//           // START BUTTON
//           // =====================
//           Positioned(
//             bottom: kBottomNavigationBarHeight + 2,
//             right: 16,
//             child: ElevatedButton(
//               onPressed: onStartPressed,
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

//       // =====================
//       // BOTTOM NAV
//       // =====================
//       bottomNavigationBar: buildBottomNavigationBar(context, 1),
//     );
//   }

//   // =====================
//   // MODULE TILE
//   // =====================
//   Widget _buildModule(
//       String title, String subtitle, Color boxColor, VoidCallback? onTap) {
//     return GestureDetector(
//       onTap: onTap, // ← Makes the module tappable
//       child: Container(
//         margin: const EdgeInsets.only(bottom: 12),
//         padding: const EdgeInsets.all(15),
//         decoration: BoxDecoration(
//           color: kWhite,
//           borderRadius: BorderRadius.circular(12),
//           boxShadow: [
//             BoxShadow(
//               color: Colors.black.withOpacity(0.05),
//               blurRadius: 10,
//               offset: const Offset(0, 4),
//             ),
//           ],
//         ),
//         child: Row(
//           children: [
//             Container(
//               height: 60,
//               width: 60,
//               decoration: BoxDecoration(
//                 color: boxColor,
//                 borderRadius: BorderRadius.circular(10),
//               ),
//               child: const Icon(
//                 Icons.play_circle_fill,
//                 color: kWhite,
//               ),
//             ),
//             const SizedBox(width: 15),
//             Expanded(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     title,
//                     style: const TextStyle(
//                       fontWeight: FontWeight.bold,
//                       fontSize: 15,
//                     ),
//                   ),
//                   const SizedBox(height: 4),
//                   Text(
//                     subtitle,
//                     style: const TextStyle(
//                       color: Colors.grey,
//                       fontSize: 13,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import '../widgets/bottom_nav.dart';

// =====================
// COLOR CONSTANTS
// =====================
const Color kNavy = Color(0xFF1D3557);
const Color kGold = Color(0xFFB8860B);
const Color kLightBg = Color(0xFFF0F2F5);
const Color kWhite = Colors.white;

// =====================
// MODEL FOR MODULE
// =====================
class CourseModule {
  final String title;
  final String subtitle;
  final Color color;
  final VoidCallback? onTap; // Optional callback

  CourseModule({
    required this.title,
    required this.subtitle,
    required this.color,
    this.onTap,
  });
}

// =====================
// REUSABLE COURSE SCREEN
// =====================
class CourseDetailsScreen extends StatelessWidget {
  final String courseTitle;
  final IconData mainIcon;
  final double rating;
  final String description;
  final List<CourseModule> modules;
  final VoidCallback onStartPressed;

  const CourseDetailsScreen({
    super.key,
    required this.courseTitle,
    required this.mainIcon,
    required this.rating,
    required this.description,
    required this.modules,
    required this.onStartPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kLightBg,
      body: Stack(
        children: [
          SafeArea(
            child: ListView(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 160),
              children: [
                // =====================
                // TITLE WITH BACK ARROW
                // =====================
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(
                        Icons.arrow_back_ios_new,
                        size: 20,
                        color: kNavy,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        courseTitle,
                        style: const TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: kNavy,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15),

                // =====================
                // MAIN ICON
                // =====================
                Container(
                  height: 180,
                  decoration: BoxDecoration(
                    color: kWhite,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(
                    child: Icon(mainIcon, size: 60, color: kNavy),
                  ),
                ),
                const SizedBox(height: 10),

                // =====================
                // RATING
                // =====================
                Row(
                  children: [
                    const Icon(Icons.star, color: kGold, size: 20),
                    const Icon(Icons.star, color: kGold, size: 20),
                    const Icon(Icons.star, color: kGold, size: 20),
                    const Icon(Icons.star_outline, color: kGold, size: 20),
                    const Spacer(),
                    Text(
                      rating.toString(),
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: kNavy,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),

                // =====================
                // DESCRIPTION
                // =====================
                Text(
                  description,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 25),

                // =====================
                // CURRICULUM
                // =====================
                const Text(
                  "Course Curriculum",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: kNavy,
                  ),
                ),
                const SizedBox(height: 15),

                // =====================
                // MODULES
                // =====================
                ...modules.map(
                  (module) => _buildModule(
                    module.title,
                    module.subtitle,
                    module.color,
                    module.onTap,
                  ),
                ),
              ],
            ),
          ),

          // =====================
          // START BUTTON
          // =====================
          Positioned(
            bottom: kBottomNavigationBarHeight + 2,
            right: 16,
            child: ElevatedButton(
              onPressed: onStartPressed,
              style: ElevatedButton.styleFrom(
                backgroundColor: kGold,
                padding:
                    const EdgeInsets.symmetric(horizontal: 28, vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(28),
                ),
                elevation: 3,
              ),
              child: const Text(
                "Start",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: kWhite,
                ),
              ),
            ),
          ),
        ],
      ),

      // =====================
      // BOTTOM NAV
      // =====================
      bottomNavigationBar: buildBottomNavigationBar(context, 1),
    );
  }

  // =====================
  // MODULE TILE
  // =====================
  Widget _buildModule(
      String title, String subtitle, Color boxColor, VoidCallback? onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(bottom: 12),
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: kWhite,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Row(
          children: [
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                color: boxColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Icon(
                Icons.play_circle_fill,
                color: kWhite,
              ),
            ),
            const SizedBox(width: 15),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    subtitle,
                    style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

