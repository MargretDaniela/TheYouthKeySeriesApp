import 'package:flutter/material.dart';

// --- App Colors ---
const Color kPrimaryGold = Color(0xFFAC7D0C);
const Color kDeepBlue = Color(0xFF032B53);
const Color kLightGrayBg = Color(0xFFF0F0F0);
const Color kAppBarBg = Color(0xFFF8F8F8);
const Color kDarkNavy = Color(0xFF0D253F);
const Color kWhite = Colors.white;
const Color kTextDark = Color(0xFF1A1A1A);

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  final List<Map<String, dynamic>> popularCategories = const [
    {
      'title': 'Leadership Skills',
      'icon': Icons.star,
    },
    {
      'title': 'Financial Literacy',
      'icon': Icons.account_balance_wallet,
    },
    {
      'title': 'Digital Entrepreneurship',
      'icon': Icons.laptop_mac,
    },
    {
      'title': 'Communication',
      'icon': Icons.record_voice_over,
    },
  ];

  final List<Map<String, dynamic>> trendingLessons = const [
    {'title': 'Mastering Public Speaking', 'icon': Icons.mic},
    {'title': 'Creative Problem-Solving', 'icon': Icons.lightbulb_outline},
    {'title': 'Effective Team Collaboration', 'icon': Icons.groups},
    {'title': 'Time Management Hacks', 'icon': Icons.access_time},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kLightGrayBg,
      appBar: AppBar(
        backgroundColor: kAppBarBg,
        elevation: 0,
        title: const Text(
          'YOUTH K.E.Y',
          style: TextStyle(
              color: kDeepBlue, fontWeight: FontWeight.bold, fontSize: 20),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_none, color: kDeepBlue),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            const Text(
              'Discover Your Path',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w900,
                color: kDeepBlue,
              ),
            ),
            const SizedBox(height: 20),
            _buildSearchBar(),
            const SizedBox(height: 30),
            _buildSectionHeader('Popular Categories'),
            const SizedBox(height: 15),
            _buildCategoryGrid(),
            const SizedBox(height: 30),
            _buildSectionHeader('New and Trending Lessons'),
            const SizedBox(height: 15),
            _buildLessonGrid(),
            const SizedBox(height: 80),
          ],
        ),
      ),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  // --- Search Bar ---
  Widget _buildSearchBar() {
    return Container(
      decoration: BoxDecoration(
        color: kAppBarBg,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.blueGrey.shade100),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: const TextField(
        decoration: InputDecoration(
          hintText: 'Search courses or topics',
          border: InputBorder.none,
          prefixIcon: Icon(Icons.search, color: kDeepBlue),
        ),
      ),
    );
  }

  // --- Section Header ---
  Widget _buildSectionHeader(String title) {
    return Text(
      title,
      style: const TextStyle(
          fontSize: 20, fontWeight: FontWeight.bold, color: kDeepBlue),
    );
  }

  // --- Categories ---
  Widget _buildCategoryGrid() {
    return Wrap(
      spacing: 12,
      runSpacing: 12,
      children: popularCategories
          .map((category) => _buildCategoryChip(category['title'], category['icon']))
          .toList(),
    );
  }

  Widget _buildCategoryChip(String title, IconData icon) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: BoxDecoration(
        color: kWhite,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 3,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 25,
            height: 25,
            decoration: const BoxDecoration(
              color: kPrimaryGold,
              shape: BoxShape.circle,
            ),
            child: Icon(icon, color: kWhite, size: 20),
          ),
          const SizedBox(width: 10),
          Text(
            title,
            style: const TextStyle(color: kTextDark, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }

  // --- Lessons Grid ---
  Widget _buildLessonGrid() {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: trendingLessons.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 15,
        mainAxisSpacing: 15,
        childAspectRatio: 0.9,
      ),
      itemBuilder: (context, index) {
        final lesson = trendingLessons[index];
        return _buildLessonCard(lesson['title'], lesson['icon']);
      },
    );
  }

  Widget _buildLessonCard(String title, IconData icon) {
    return Container(
      decoration: BoxDecoration(
        color: kWhite,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(color: kDeepBlue.withOpacity(0.1), blurRadius: 5),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 70,
            decoration: BoxDecoration(
              color: kDeepBlue,
              borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(15)),
            ),
            alignment: Alignment.center,
            child: Icon(icon, size: 35, color: kWhite),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              title,
              style: const TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 15, color: kTextDark),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(left: 12.0, bottom: 12.0),
            child: Text(
              'Start Lesson',
              style: TextStyle(
                color: kPrimaryGold,
                fontWeight: FontWeight.w600,
                fontSize: 13,
              ),
            ),
          ),
        ],
      ),
    );
  }

  // --- Bottom Navigation ---
  Widget _buildBottomNavigationBar() {
    return BottomNavigationBar(
      currentIndex: 0,
      type: BottomNavigationBarType.fixed,
      backgroundColor: kDarkNavy,
      selectedItemColor: kPrimaryGold,
      unselectedItemColor: kWhite.withOpacity(0.7),
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.menu_book), label: 'Course'),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
        BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Message'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
      ],
    );
  }
}
