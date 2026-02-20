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
// // COURSE MODEL
// // =====================
// class Course {
//   final String title;
//   final String desc;
//   final IconData icon;

//   Course(this.title, this.desc, this.icon);
// }

// // =====================
// // ALL COURSES SCREEN
// // =====================
// class AllCoursesScreen extends StatefulWidget {
//   const AllCoursesScreen({super.key});

//   @override
//   State<AllCoursesScreen> createState() => _AllCoursesScreenState();
// }

// class _AllCoursesScreenState extends State<AllCoursesScreen> {
//   String _searchQuery = "";

//   final List<Course> _courses = [
//     Course(
//       "Mastering Public Speaking",
//       "Conquer your fear of public speaking......",
//       Icons.school,
//     ),
//     Course(
//       "Professional Skills Development",
//       "Enhance teamwork, leadership, and career growth.",
//       Icons.work,
//     ),
//     Course(
//       "Entrepreneurship & Business",
//       "Learn how to build and scale businesses.",
//       Icons.business_center,
//     ),
//     Course(
//       "Financial & Economic Skills",
//       "Develop personal finance and accounting skills.",
//       Icons.attach_money,
//     ),
//   ];

//   // =====================
//   // NAVIGATION HANDLER
//   // =====================
//   void _navigateToCourse(BuildContext context, String title) {
//     switch (title) {
//       case "Mastering Public Speaking":
//         Navigator.pushNamed(
//             context, '/courses/mastering_public_speaking');
//         break;

//       case "Professional Skills Development":
//         Navigator.pushNamed(context, '/courses/professional_skills');
//         break;

//       case "Entrepreneurship & Business":
//         Navigator.pushNamed(context, '/courses/entrepreneurship');
//         break;

//       case "Financial & Economic Skills":
//         Navigator.pushNamed(context, '/courses/financial_skills');
//         break;
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     final bottomPadding =
//         MediaQuery.of(context).padding.bottom + kBottomNavigationBarHeight;

//     final filteredCourses = _courses.where((course) {
//       final q = _searchQuery.toLowerCase();
//       return course.title.toLowerCase().contains(q) ||
//           course.desc.toLowerCase().contains(q);
//     }).toList();

//     return Scaffold(
//       backgroundColor: kLightBg,
//       appBar: AppBar(
//         backgroundColor: kWhite,
//         elevation: 0,
//         title: const Text(
//           "All Courses",
//           style: TextStyle(
//             color: kNavy,
//             fontWeight: FontWeight.bold,
//             fontSize: 24,
//           ),
//         ),
//       ),
//       body: Column(
//         children: [
//           // =====================
//           // SEARCH BAR
//           // =====================
//           Padding(
//             padding: const EdgeInsets.all(16),
//             child: TextField(
//               decoration: InputDecoration(
//                 hintText: "Search courses...",
//                 filled: true,
//                 fillColor: kWhite,
//                 prefixIcon: const Icon(Icons.search, color: kNavy),
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(16),
//                   borderSide: BorderSide.none,
//                 ),
//               ),
//               onChanged: (v) => setState(() => _searchQuery = v),
//             ),
//           ),

//           // =====================
//           // COURSE GRID
//           // =====================
//           Expanded(
//             child: GridView.builder(
//               padding: EdgeInsets.fromLTRB(16, 0, 16, bottomPadding + 16),
//               itemCount: filteredCourses.length,
//               gridDelegate:
//                   const SliverGridDelegateWithFixedCrossAxisCount(
//                 crossAxisCount: 2,
//                 mainAxisSpacing: 16,
//                 crossAxisSpacing: 16,
//                 childAspectRatio: 1,
//               ),
//               itemBuilder: (context, index) {
//                 final course = filteredCourses[index];
//                 return _buildCourseCard(
//                   course,
//                   _searchQuery,
//                   context,
//                 );
//               },
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
//   // COURSE CARD (FULLY CLICKABLE)
//   // =====================
//   Widget _buildCourseCard(
//     Course course,
//     String query,
//     BuildContext context,
//   ) {
//     return GestureDetector(
//       onTap: () => _navigateToCourse(context, course.title),
//       child: Container(
//         decoration: BoxDecoration(
//           color: kWhite,
//           borderRadius: BorderRadius.circular(16),
//           boxShadow: [
//             BoxShadow(
//               color: Colors.black.withOpacity(0.05),
//               blurRadius: 10,
//               offset: const Offset(0, 5),
//             ),
//           ],
//         ),
//         child: Column(
//           children: [
//             // TOP ICON SECTION
//             Expanded(
//               flex: 3,
//               child: Container(
//                 decoration: const BoxDecoration(
//                   color: kNavy,
//                   borderRadius:
//                       BorderRadius.vertical(top: Radius.circular(16)),
//                 ),
//                 child: Center(
//                   child: Icon(course.icon, color: kWhite, size: 32),
//                 ),
//               ),
//             ),

//             // DETAILS
//             Expanded(
//               flex: 6,
//               child: Padding(
//                 padding: const EdgeInsets.all(8),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     _highlightText(course.title, query),
//                     const SizedBox(height: 6),
//                     _highlightText(course.desc, query, isTitle: false),
//                     const Spacer(),

//                     // START COURSE (same navigation)
//                     GestureDetector(
//                       onTap: () =>
//                           _navigateToCourse(context, course.title),
//                       child: const Text(
//                         "Start Course",
//                         style: TextStyle(
//                           color: kGold,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   // =====================
//   // SEARCH HIGHLIGHT
//   // =====================
//   Widget _highlightText(
//     String text,
//     String query, {
//     bool isTitle = true,
//   }) {
//     if (query.isEmpty) {
//       return Text(
//         text,
//         style: TextStyle(
//           fontSize: isTitle ? 16 : 12,
//           fontWeight:
//               isTitle ? FontWeight.bold : FontWeight.normal,
//           color: isTitle ? kNavy : Colors.grey,
//         ),
//       );
//     }

//     final lowerText = text.toLowerCase();
//     final lowerQuery = query.toLowerCase();
//     final spans = <TextSpan>[];
//     int start = 0;

//     while (true) {
//       final index = lowerText.indexOf(lowerQuery, start);
//       if (index < 0) break;

//       if (index > start) {
//         spans.add(TextSpan(text: text.substring(start, index)));
//       }

//       spans.add(
//         TextSpan(
//           text: text.substring(index, index + query.length),
//           style: TextStyle(
//             backgroundColor: kGold.withOpacity(0.4),
//             fontWeight: FontWeight.bold,
//             color: isTitle ? kNavy : Colors.grey[800],
//           ),
//         ),
//       );

//       start = index + query.length;
//     }

//     if (start < text.length) {
//       spans.add(TextSpan(text: text.substring(start)));
//     }

//     return RichText(
//       text: TextSpan(
//         style: TextStyle(
//           fontSize: isTitle ? 16 : 12,
//           color: isTitle ? kNavy : Colors.grey,
//         ),
//         children: spans,
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
// COURSE MODEL
// =====================
class Course {
  final String title;
  final String desc;
  final IconData icon;

  Course(this.title, this.desc, this.icon);
}

// =====================
// ALL COURSES SCREEN
// =====================
class AllCoursesScreen extends StatefulWidget {
  const AllCoursesScreen({super.key});

  @override
  State<AllCoursesScreen> createState() => _AllCoursesScreenState();
}

class _AllCoursesScreenState extends State<AllCoursesScreen> {
  String _searchQuery = "";

  final List<Course> _courses = [
    Course(
      "Mastering Public Speaking",
      "Conquer your fear of public speaking......",
      Icons.school,
    ),
    Course(
      "Professional Skills Development",
      "Enhance teamwork, leadership, and career growth.",
      Icons.work,
    ),
    Course(
      "Entrepreneurship & Business",
      "Learn how to build and scale businesses.",
      Icons.business_center,
    ),
    Course(
      "Financial & Economic Skills",
      "Develop personal finance and accounting skills.",
      Icons.attach_money,
    ),
  ];

  // =====================
  // NAVIGATION HANDLER
  // =====================
  void _navigateToCourse(BuildContext context, String title) {
    switch (title) {
      case "Mastering Public Speaking":
        Navigator.pushNamed(context, '/courses/mastering_public_speaking');
        break;

      case "Professional Skills Development":
        Navigator.pushNamed(context, '/courses/professional_skills');
        break;

      case "Entrepreneurship & Business":
        Navigator.pushNamed(context, '/courses/entrepreneurship');
        break;

      case "Financial & Economic Skills":
        Navigator.pushNamed(context, '/courses/financial_skills');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    final bottomPadding =
        MediaQuery.of(context).padding.bottom + kBottomNavigationBarHeight;

    final filteredCourses = _courses.where((course) {
      final q = _searchQuery.toLowerCase();
      return course.title.toLowerCase().contains(q) ||
          course.desc.toLowerCase().contains(q);
    }).toList();

    return Scaffold(
      backgroundColor: kLightBg,
      appBar: AppBar(
        backgroundColor: kWhite,
        elevation: 0,
        title: const Text(
          "All Courses",
          style: TextStyle(
            color: kNavy,
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
      ),
      body: Column(
        children: [
          // =====================
          // SEARCH BAR
          // =====================
          Padding(
            padding: const EdgeInsets.all(16),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search courses...",
                filled: true,
                fillColor: kWhite,
                prefixIcon: const Icon(Icons.search, color: kNavy),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide.none,
                ),
              ),
              onChanged: (v) => setState(() => _searchQuery = v),
            ),
          ),

          // =====================
          // COURSE GRID
          // =====================
          Expanded(
            child: GridView.builder(
              padding: EdgeInsets.fromLTRB(16, 0, 16, bottomPadding + 16),
              itemCount: filteredCourses.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
                childAspectRatio: 1,
              ),
              itemBuilder: (context, index) {
                final course = filteredCourses[index];
                return _buildCourseCard(course, _searchQuery, context);
              },
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
  // COURSE CARD (FULLY CLICKABLE)
  // =====================
  Widget _buildCourseCard(
    Course course,
    String query,
    BuildContext context,
  ) {
    return GestureDetector(
      onTap: () => _navigateToCourse(context, course.title),
      child: Container(
        decoration: BoxDecoration(
          color: kWhite,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 10,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        child: Column(
          children: [
            // TOP ICON SECTION
            Expanded(
              flex: 3,
              child: Container(
                decoration: const BoxDecoration(
                  color: kNavy,
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(16)),
                ),
                child: Center(
                  child: Icon(course.icon, color: kWhite, size: 32),
                ),
              ),
            ),

            // DETAILS
            Expanded(
              flex: 6,
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _highlightText(course.title, query),
                    const SizedBox(height: 6),
                    _highlightText(course.desc, query, isTitle: false),
                    const Spacer(),

                    // START COURSE (same navigation)
                    GestureDetector(
                      onTap: () => _navigateToCourse(context, course.title),
                      child: const Text(
                        "Start Course",
                        style: TextStyle(
                          color: kGold,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // =====================
  // SEARCH HIGHLIGHT
  // =====================
  Widget _highlightText(
    String text,
    String query, {
    bool isTitle = true,
  }) {
    if (query.isEmpty) {
      return Text(
        text,
        style: TextStyle(
          fontSize: isTitle ? 16 : 12,
          fontWeight: isTitle ? FontWeight.bold : FontWeight.normal,
          color: isTitle ? kNavy : Colors.grey,
        ),
      );
    }

    final lowerText = text.toLowerCase();
    final lowerQuery = query.toLowerCase();
    final spans = <TextSpan>[];
    int start = 0;

    while (true) {
      final index = lowerText.indexOf(lowerQuery, start);
      if (index < 0) break;

      if (index > start) {
        spans.add(TextSpan(text: text.substring(start, index)));
      }

      spans.add(
        TextSpan(
          text: text.substring(index, index + query.length),
          style: TextStyle(
            backgroundColor: kGold.withOpacity(0.4),
            fontWeight: FontWeight.bold,
            color: isTitle ? kNavy : Colors.grey[800],
          ),
        ),
      );

      start = index + query.length;
    }

    if (start < text.length) {
      spans.add(TextSpan(text: text.substring(start)));
    }

    return RichText(
      text: TextSpan(
        style: TextStyle(
          fontSize: isTitle ? 16 : 12,
          color: isTitle ? kNavy : Colors.grey,
        ),
        children: spans,
      ),
    );
  }
}
