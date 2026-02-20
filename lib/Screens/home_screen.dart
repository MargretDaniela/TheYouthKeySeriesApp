
// import 'package:flutter/material.dart';
// import 'package:marquee_widget/marquee_widget.dart';

// import '../widgets/bottom_nav.dart';
// import '../widgets/course_card.dart';
// import 'mastering_public_speaking.dart';

// const Color kWhite = Colors.white;
// const Color kDeepBlue = Color(0xFF0D3B66);
// const Color kPrimaryGold = Color(0xFFB08D2E);
// const Color kLightGrayBg = Color(0xFFF2F2F2);

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   bool isSearching = false;
//   final TextEditingController _searchController = TextEditingController();
//   String searchQuery = '';

//   final List<Map<String, dynamic>> popularCategories = const [
//     {'title': 'Leadership and influence', 'icon': Icons.star_rounded},
//     {'title': 'Financial Literacy', 'icon': Icons.account_balance_wallet_rounded},
//     {'title': 'Entrepreneurship and Career', 'icon': Icons.laptop_mac_rounded},
//     {'title': 'Communication', 'icon': Icons.record_voice_over_rounded},
//     {'title': 'Public Speaking', 'icon': Icons.mic_rounded},
//     {'title': 'Entrepreneurship', 'icon': Icons.trending_up_rounded},
//     {'title': 'Critical Thinking', 'icon': Icons.psychology_rounded},
//     {'title': 'Time Management', 'icon': Icons.access_time_rounded},
//   ];

//   final List<Map<String, dynamic>> trendingCourses = const [
//     {
//       'title': 'Mastering Public Speaking',
//       'instructor': 'Youth K.E.Y',
//       'image': 'images/public_speaking.jpg',
//       'price': 'Free',
//       'rating': 4.7,
//       'reviews': 1200,
//       'bestseller': true,
//     },
//     {
//       'title': 'Creative Problem Solving',
//       'instructor': 'Youth K.E.Y',
//       'image': 'images/public_speaking.jpg',
//       'price': 'Free',
//       'rating': 4.5,
//       'reviews': 850,
//       'bestseller': false,
//     },
//     {
//       'title': 'Time Management Mastery',
//       'instructor': 'Youth K.E.Y',
//       'image': 'images/public_speaking.jpg',
//       'price': 'Free',
//       'rating': 4.6,
//       'reviews': 500,
//       'bestseller': false,
//     },
//   ];

//   final List<Map<String, dynamic>> personalDevelopmentCourses = const [
//     {
//       'title': 'Building Self-Confidence',
//       'instructor': 'Youth K.E.Y',
//       'image': 'images/public_speaking.jpg',
//       'price': 'Free',
//       'rating': 4.6,
//       'reviews': 3400,
//       'bestseller': false,
//     },
//     {
//       'title': 'Emotional Intelligence',
//       'instructor': 'Youth K.E.Y',
//       'image': 'images/public_speaking.jpg',
//       'price': 'Free',
//       'rating': 4.8,
//       'reviews': 2700,
//       'bestseller': true,
//     },
//   ];

//   List<Map<String, dynamic>> filterCourses(List<Map<String, dynamic>> courses) {
//     if (searchQuery.isEmpty) return courses;
//     return courses
//         .where((c) =>
//             c['title'].toLowerCase().contains(searchQuery.toLowerCase()))
//         .toList();
//   }

//   @override
//   Widget build(BuildContext context) {
//     final filteredTrending = filterCourses(trendingCourses);
//     final filteredPersonal = filterCourses(personalDevelopmentCourses);

//     return Scaffold(
//       backgroundColor: kLightGrayBg,
//       appBar: AppBar(
//         backgroundColor: kWhite,
//         elevation: 0,
//         title: !isSearching
//             ? const Text(
//                 'YOUTH K.E.Y SERIES',
//                 style: TextStyle(
//                   color: kDeepBlue,
//                   fontWeight: FontWeight.w900,
//                   fontSize: 22,
//                 ),
//               )
//             : TextField(
//                 controller: _searchController,
//                 autofocus: true,
//                 decoration: InputDecoration(
//                   hintText: 'Search courses...',
//                   hintStyle: const TextStyle(color: Colors.grey),
//                   border: InputBorder.none,
//                 ),
//                 style: const TextStyle(color: kDeepBlue, fontSize: 18),
//                 onChanged: (value) {
//                   setState(() {
//                     searchQuery = value;
//                   });
//                 },
//               ),
//         actions: [
//           IconButton(
//             icon: Icon(isSearching ? Icons.close : Icons.search,
//                 color: kDeepBlue),
//             onPressed: () {
//               setState(() {
//                 if (isSearching) {
//                   searchQuery = '';
//                   _searchController.clear();
//                 }
//                 isSearching = !isSearching;
//               });
//             },
//           ),
//         ],
//       ),
//       body: SingleChildScrollView(
//         padding: const EdgeInsets.symmetric(horizontal: 24),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             if (!isSearching) ...[
//               const SizedBox(height: 16),
//               const Text(
//                 'Discover Your Path',
//                 style: TextStyle(
//                   fontSize: 32,
//                   fontWeight: FontWeight.w900,
//                   color: kDeepBlue,
//                 ),
//               ),
//               const SizedBox(height: 24),
//               const Text(
//                 'Popular Categories',
//                 style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
//               ),
//               const SizedBox(height: 12),
//               _buildMarqueeCategories(),
//               const SizedBox(height: 28),
//             ],
//             const Text(
//               'New and Trending Lessons',
//               style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
//             ),
//             const SizedBox(height: 12),
//             filteredTrending.isEmpty
//                 ? const Center(
//                     child: Padding(
//                       padding: EdgeInsets.symmetric(vertical: 32),
//                       child: Text(
//                         'No results found',
//                         style: TextStyle(
//                             color: Colors.grey,
//                             fontSize: 16,
//                             fontWeight: FontWeight.w600),
//                       ),
//                     ),
//                   )
//                 : _buildHorizontalCourses(filteredTrending, searchQuery),
//             const SizedBox(height: 28),
//             const Text(
//               'Personal Development Courses',
//               style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
//             ),
//             const SizedBox(height: 12),
//             filteredPersonal.isEmpty
//                 ? const Center(
//                     child: Padding(
//                       padding: EdgeInsets.symmetric(vertical: 32),
//                       child: Text(
//                         'No results found',
//                         style: TextStyle(
//                             color: Colors.grey,
//                             fontSize: 16,
//                             fontWeight: FontWeight.w600),
//                       ),
//                     ),
//                   )
//                 : _buildHorizontalCourses(filteredPersonal, searchQuery),
//             const SizedBox(height: 32),
//           ],
//         ),
//       ),
//       bottomNavigationBar: buildBottomNavigationBar(context, 0),
//     );
//   }

//   Widget _buildMarqueeCategories() {
//     return SizedBox(
//       height: 48,
//       child: Marquee(
//         direction: Axis.horizontal,
//         animationDuration: const Duration(seconds: 20),
//         child: Row(
//           children: popularCategories
//               .map((cat) => _buildCategoryChip(cat['title'], cat['icon']))
//               .toList(),
//         ),
//       ),
//     );
//   }

//   Widget _buildCategoryChip(String title, IconData icon) {
//     return Container(
//       margin: const EdgeInsets.only(right: 12),
//       padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
//       decoration: BoxDecoration(
//         color: kWhite,
//         borderRadius: BorderRadius.circular(100),
//       ),
//       child: Row(
//         children: [
//           CircleAvatar(
//             radius: 12,
//             backgroundColor: kPrimaryGold,
//             child: Icon(icon, size: 14, color: kWhite),
//           ),
//           const SizedBox(width: 6),
//           Text(title, style: const TextStyle(fontSize: 12)),
//         ],
//       ),
//     );
//   }

//   Widget _buildHorizontalCourses(
//       List<Map<String, dynamic>> courses, String highlight) {
//     return SizedBox(
//       height: 330,
//       child: ListView.separated(
//         scrollDirection: Axis.horizontal,
//         itemCount: courses.length,
//         separatorBuilder: (_, __) => const SizedBox(width: 16),
//         itemBuilder: (context, index) {
//           final c = courses[index];
//           return GestureDetector(
//             onTap: () {
//               if (c['title'] == 'Mastering Public Speaking') {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (_) => const MasteringPublicSpeakingScreen(),
//                   ),
//                 );
//               }
//             },
//             child: CourseCard(
//               title: c['title'],
//               instructor: c['instructor'],
//               imagePath: c['image'],
//               price: c['price'],
//               rating: c['rating'],
//               reviews: c['reviews'],
//               isBestseller: c['bestseller'],
//             ),
//           );
//         },
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import '../widgets/bottom_nav.dart';
import 'view_all_screen.dart';

const Color kNavy = Color(0xFF0D3B66);
const Color kGold = Color(0xFFF2C94C);
const Color kWhite = Colors.white;
const Color kLightGrayBg = Color(0xFFF5F5F5);

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isSearching = false;
  final TextEditingController _searchController = TextEditingController();
  String searchQuery = '';

  final Map<String, List<String>> allCourses = {
    "Personal Development": [
      "Discovering Your Purpose",
      "Building Self-Confidence",
      "Developing a Growth Mindset",
      "Emotional Intelligence",
      "Building Resilience",
    ],
    "Leadership & Influence": [
      "Leadership Skills for Youth",
      "Public Speaking & Presentation Skills",
      "Conflict Resolution & Negotiation",
      "Ethical Leadership & Integrity",
    ],
    "Entrepreneurship & Career": [
      "Entrepreneurship Fundamentals",
      "Business Planning & Strategy",
      "Marketing Yourself & Your Business",
      "Funding & Investment Basics",
    ],
  };

  List<MapEntry<String, List<String>>> getFilteredCategories() {
    if (searchQuery.isEmpty) return allCourses.entries.toList();

    return allCourses.entries
        .map((entry) {
          final filtered = entry.value
              .where((c) =>
                  c.toLowerCase().contains(searchQuery.toLowerCase()))
              .toList();
          return MapEntry(entry.key, filtered);
        })
        .where((entry) => entry.value.isNotEmpty)
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    final filteredCategories = getFilteredCategories();

    return Scaffold(
      backgroundColor: kLightGrayBg,
      appBar: AppBar(
        backgroundColor: kNavy,
        title: !isSearching
            ? const Text(
                'YOUTH K.E.Y SERIES',
                style: TextStyle(color: kWhite, fontWeight: FontWeight.bold),
              )
            : TextField(
                controller: _searchController,
                autofocus: true,
                style: const TextStyle(color: kWhite),
                decoration: const InputDecoration(
                  hintText: "Search courses...",
                  hintStyle: TextStyle(color: Colors.white70),
                  border: InputBorder.none,
                ),
                onChanged: (value) => setState(() => searchQuery = value),
              ),
        actions: [
          IconButton(
            icon: Icon(
              isSearching ? Icons.close : Icons.search,
              color: kWhite,
            ),
            onPressed: () {
              setState(() {
                if (isSearching) _searchController.clear();
                searchQuery = '';
                isSearching = !isSearching;
              });
            },
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: filteredCategories
              .map((entry) => _buildCategorySection(entry.key, entry.value))
              .toList(),
        ),
      ),
      bottomNavigationBar: buildBottomNavigationBar(context, 0),
    );
  }

  Widget _buildCategorySection(String category, List<String> courses) {
    final preview = courses.take(3).toList();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(category,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            TextButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => ViewAllScreen(category: category, courses: courses),
                ),
              ),
              child: const Text(
                "View All",
                style: TextStyle(color: kGold, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
        const SizedBox(height: 12),
        SizedBox(
          height: 220,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: preview.length,
            separatorBuilder: (_, __) => const SizedBox(width: 12),
            itemBuilder: (context, index) =>
                _buildCourseCard(preview[index]),
          ),
        ),
        const SizedBox(height: 30),
      ],
    );
  }

  Widget _buildCourseCard(String title) {
    return Container(
      width: 180,
      decoration: BoxDecoration(
        color: kWhite,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.12),
            blurRadius: 6,
            offset: const Offset(0, 3),
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // IMAGE
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
            child: Container(
              height: 100,
              color: kGold.withOpacity(0.15),
              child: const Icon(Icons.school, size: 50, color: kGold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 14)),
                const SizedBox(height: 6),
                const Text("US\$59.99",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
              ],
            ),
          )
        ],
      ),
    );
  }
}