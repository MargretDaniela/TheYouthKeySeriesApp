
// import 'package:flutter/material.dart';
// import '../widgets/bottom_nav.dart';

// // =====================
// // COLOR CONSTANTS
// // =====================
// const Color kNavy = Color(0xFF002147);
// const Color kGold = Color(0xFFF2C94C);
// const Color kWhite = Colors.white;

// class SearchScreen extends StatefulWidget {
//   const SearchScreen({super.key});

//   @override
//   State<SearchScreen> createState() => _SearchScreenState();
// }

// class _SearchScreenState extends State<SearchScreen> {
//   final TextEditingController _searchController = TextEditingController();

//   String activeFilter = 'All';

//   // =====================
//   // SAMPLE DATA
//   // =====================
//   final List<Map<String, String>> allCourses = [
//     {
//       "title": "Mastering Public Speakimg",
//       "author": "Youth K.E.Y",
//       "price": "\$19",
//     },
//     {
//       "title": "Creative Problem Solving",
//       "author": "Youth K.E.Y",
//       "price": "\$25",
//     },
//     {
//       "title": "Time Management Mastery",
//       "author": "Youth K.E.Y",
//       "price": "\$15",
//     },
//     {
//       "title": "Emotional Intelligence",
//       "author": "Youth K.E.Y",
//       "price": "\$15",
//     },
//   ];

//   List<Map<String, String>> filteredCourses = [];

//   // ✅ START EMPTY — NO HARD CODING
//   List<String> recentSearches = [];

//   @override
//   void initState() {
//     super.initState();
//     filteredCourses = allCourses;
//   }

//   // =====================
//   // FILTER RESULTS
//   // =====================
//   void _filterResults(String query) {
//     setState(() {
//       filteredCourses = allCourses.where((course) {
//         final title = course['title']!.toLowerCase();
//         final author = course['author']!.toLowerCase();
//         final input = query.toLowerCase();

//         if (activeFilter == 'Author') {
//           return author.contains(input);
//         } else if (activeFilter == 'Price') {
//           return course['price']!.contains(input);
//         }
//         return title.contains(input) || author.contains(input);
//       }).toList();
//     });
//   }

//   // =====================
//   // SAVE RECENT SEARCH
//   // =====================
//   void _saveRecentSearch(String query) {
//     final cleanQuery = query.trim();
//     if (cleanQuery.isEmpty) return;

//     setState(() {
//       recentSearches.remove(cleanQuery); // prevent duplicates
//       recentSearches.insert(0, cleanQuery); // most recent first

//       if (recentSearches.length > 5) {
//         recentSearches.removeLast();
//       }
//     });
//   }

//   void _clearSearch() {
//     _searchController.clear();
//     setState(() {
//       filteredCourses = allCourses;
//     });
//   }

//   void _clearRecentSearches() {
//     setState(() {
//       recentSearches.clear();
//     });
//   }

//   void _removeRecentSearch(String search) {
//     setState(() {
//       recentSearches.remove(search);
//     });
//   }

//   // =====================
//   // UI
//   // =====================
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           _buildHeader(),
//           if (_searchController.text.isEmpty) _buildRecentSearches(),
//           _buildResults(),
//         ],
//       ),
//       bottomNavigationBar: buildBottomNavigationBar(context, 2),
//     );
//   }

//   // =====================
//   // HEADER
//   // =====================
//   Widget _buildHeader() {
//     return Container(
//       padding: const EdgeInsets.fromLTRB(20, 60, 20, 20),
//       color: kNavy,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           const Text(
//             "Search",
//             style: TextStyle(
//               color: kGold,
//               fontSize: 28,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//           const SizedBox(height: 16),
//           TextField(
//             controller: _searchController,
//             onChanged: _filterResults,
//             onSubmitted: (value) {
//               _saveRecentSearch(value);
//               _filterResults(value);
//             },
//             textInputAction: TextInputAction.search,
//             decoration: InputDecoration(
//               filled: true,
//               fillColor: const Color(0xFFF5F6FA),
//               prefixIcon: const Icon(Icons.search),
//               hintText: "Search courses, authors...",
//               suffixIcon: IconButton(
//                 icon: const Icon(Icons.cancel, color: Colors.grey),
//                 onPressed: _clearSearch,
//               ),
//               border: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(15),
//                 borderSide: const BorderSide(color: kGold),
//               ),
//             ),
//           ),
//           const SizedBox(height: 14),
//           SingleChildScrollView(
//             scrollDirection: Axis.horizontal,
//             child: Row(
//               children: [
//                 _buildFilterChip("All"),
//                 _buildFilterChip("Author"),
//                 _buildFilterChip("Price"),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   // =====================
//   // RECENT SEARCHES
//   // =====================
//   Widget _buildRecentSearches() {
//     return Container(
//       padding: const EdgeInsets.all(16),
//       constraints: const BoxConstraints(minHeight: 120),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               const Text(
//                 "Recent Searches",
//                 style: TextStyle(fontWeight: FontWeight.bold),
//               ),
//               TextButton(
//                 onPressed: recentSearches.isEmpty ? null : _clearRecentSearches,
//                 child: const Text("Clear", style: TextStyle(color: Colors.red)),
//               ),
//             ],
//           ),
//           const SizedBox(height: 8),
//           recentSearches.isEmpty
//               ? const Text(
//                   "No recent searches",
//                   style: TextStyle(color: Colors.grey),
//                 )
//               : Wrap(
//                   spacing: 8,
//                   children: recentSearches.map((search) {
//                     return GestureDetector(
//                       onTap: () {
//                         _searchController.text = search;
//                         _filterResults(search);
//                         _saveRecentSearch(search);
//                       },
//                       child: Chip(
//                         label: Text(search),
//                         deleteIcon: const Icon(Icons.cancel,
//                             size: 18, color: Colors.grey),
//                         onDeleted: () => _removeRecentSearch(search),
//                       ),
//                     );
//                   }).toList(),
//                 ),
//         ],
//       ),
//     );
//   }

//   // =====================
//   // RESULTS
//   // =====================
//   Widget _buildResults() {
//     return Expanded(
//       child: ListView.builder(
//         padding: const EdgeInsets.all(16),
//         itemCount: filteredCourses.length,
//         itemBuilder: (context, index) {
//           final course = filteredCourses[index];
//           return _buildResultCard(
//             course['title']!,
//             course['author']!,
//             course['price']!,
//           );
//         },
//       ),
//     );
//   }

//   // =====================
//   // WIDGETS
//   // =====================
//   Widget _buildFilterChip(String label) {
//     final isSelected = activeFilter == label;

//     return GestureDetector(
//       onTap: () {
//         setState(() => activeFilter = label);
//         _filterResults(_searchController.text);
//       },
//       child: Container(
//         margin: const EdgeInsets.only(right: 8),
//         padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
//         decoration: BoxDecoration(
//           color: isSelected ? kGold : Colors.transparent,
//           borderRadius: BorderRadius.circular(20),
//           border: Border.all(color: kGold),
//         ),
//         child: Text(
//           label,
//           style: TextStyle(
//             color: isSelected ? kNavy : kWhite,
//             fontWeight: FontWeight.w600,
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildResultCard(String title, String author, String price) {
//     return Container(
//       margin: const EdgeInsets.only(bottom: 12),
//       padding: const EdgeInsets.all(12),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(15),
//         color: Colors.white,
//         boxShadow: [
//           BoxShadow(color: Colors.black.withOpacity(0.05), blurRadius: 10),
//         ],
//       ),
//       child: Row(
//         children: [
//           Container(
//             height: 70,
//             width: 70,
//             decoration: BoxDecoration(
//               color: kNavy,
//               borderRadius: BorderRadius.circular(10),
//             ),
//           ),
//           const SizedBox(width: 15),
//           Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(title,
//                     style: const TextStyle(fontWeight: FontWeight.bold)),
//                 Text(author, style: const TextStyle(color: Colors.grey)),
//                 const SizedBox(height: 6),
//                 Text(price,
//                     style: const TextStyle(fontWeight: FontWeight.bold)),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import '../widgets/bottom_nav.dart';

// =====================
// COLOR CONSTANTS
// =====================
const Color kNavy = Color(0xFF002147);
const Color kGold = Color(0xFFF2C94C);
const Color kWhite = Colors.white;

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController _searchController = TextEditingController();

  String activeFilter = 'All';

  // =====================
  // SAMPLE DATA
  // =====================
  final List<Map<String, String>> allCourses = [
    {
      "title": "Mastering Public Speakimg",
      "author": "Youth K.E.Y",
      "price": "\$19",
    },
    {
      "title": "Creative Problem Solving",
      "author": "Youth K.E.Y",
      "price": "\$25",
    },
    {
      "title": "Time Management Mastery",
      "author": "Youth K.E.Y",
      "price": "\$15",
    },
    {
      "title": "Emotional Intelligence",
      "author": "Youth K.E.Y",
      "price": "\$15",
    },
  ];

  List<Map<String, String>> filteredCourses = [];
  List<String> recentSearches = [];

  @override
  void initState() {
    super.initState();
    filteredCourses = allCourses;
  }

  // =====================
  // FILTER RESULTS (TITLE + AUTHOR + PRICE)
  // =====================
  void _filterResults(String query) {
    final input = query.toLowerCase();

    setState(() {
      filteredCourses = allCourses.where((course) {
        final title = course['title']!.toLowerCase();
        final author = course['author']!.toLowerCase();
        final price = course['price']!.toLowerCase();

        if (activeFilter == 'Author') {
          return author.contains(input);
        } else if (activeFilter == 'Price') {
          return price.contains(input);
        }

        // ✅ ALL → title + author + price
        return title.contains(input) ||
            author.contains(input) ||
            price.contains(input);
      }).toList();
    });
  }

  // =====================
  // SAVE RECENT SEARCH
  // =====================
  void _saveRecentSearch(String query) {
    final cleanQuery = query.trim();
    if (cleanQuery.isEmpty) return;

    setState(() {
      recentSearches.remove(cleanQuery);
      recentSearches.insert(0, cleanQuery);

      if (recentSearches.length > 5) {
        recentSearches.removeLast();
      }
    });
  }

  void _clearSearch() {
    _searchController.clear();
    setState(() {
      filteredCourses = allCourses;
    });
  }

  void _clearRecentSearches() {
    setState(() {
      recentSearches.clear();
    });
  }

  void _removeRecentSearch(String search) {
    setState(() {
      recentSearches.remove(search);
    });
  }

  // =====================
  // UI
  // =====================
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildHeader(),
          if (_searchController.text.isEmpty) _buildRecentSearches(),
          _buildResults(),
        ],
      ),
      bottomNavigationBar: buildBottomNavigationBar(context, 2),
    );
  }

  // =====================
  // HEADER
  // =====================
  Widget _buildHeader() {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 60, 20, 20),
      color: kNavy,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Search",
            style: TextStyle(
              color: kGold,
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          TextField(
            controller: _searchController,
            onChanged: _filterResults,
            onSubmitted: (value) {
              _saveRecentSearch(value);
              _filterResults(value);
            },
            textInputAction: TextInputAction.search,
            decoration: InputDecoration(
              filled: true,
              fillColor: const Color(0xFFF5F6FA),
              prefixIcon: const Icon(Icons.search),
              hintText: "Search courses, authors, price...",
              suffixIcon: IconButton(
                icon: const Icon(Icons.cancel, color: Colors.grey),
                onPressed: _clearSearch,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: const BorderSide(color: kGold),
              ),
            ),
          ),
          const SizedBox(height: 14),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                _buildFilterChip("All"),
                _buildFilterChip("Author"),
                _buildFilterChip("Price"),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // =====================
  // RECENT SEARCHES
  // =====================
  Widget _buildRecentSearches() {
    return Container(
      padding: const EdgeInsets.all(16),
      constraints: const BoxConstraints(minHeight: 120),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("Recent Searches",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              TextButton(
                onPressed: recentSearches.isEmpty ? null : _clearRecentSearches,
                child:
                    const Text("Clear", style: TextStyle(color: Colors.red)),
              ),
            ],
          ),
          const SizedBox(height: 8),
          recentSearches.isEmpty
              ? const Text("No recent searches",
                  style: TextStyle(color: Colors.grey))
              : Wrap(
                  spacing: 8,
                  children: recentSearches.map((search) {
                    return GestureDetector(
                      onTap: () {
                        _searchController.text = search;
                        _filterResults(search);
                        _saveRecentSearch(search);
                      },
                      child: Chip(
                        label: Text(search),
                        deleteIcon: const Icon(Icons.cancel,
                            size: 18, color: Colors.grey),
                        onDeleted: () => _removeRecentSearch(search),
                      ),
                    );
                  }).toList(),
                ),
        ],
      ),
    );
  }

  // =====================
  // RESULTS
  // =====================
  Widget _buildResults() {
    return Expanded(
      child: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: filteredCourses.length,
        itemBuilder: (context, index) {
          final course = filteredCourses[index];
          return _buildResultCard(
            course['title']!,
            course['author']!,
            course['price']!,
          );
        },
      ),
    );
  }

  // =====================
  // WIDGETS
  // =====================
  Widget _buildFilterChip(String label) {
    final isSelected = activeFilter == label;

    return GestureDetector(
      onTap: () {
        setState(() => activeFilter = label);
        _filterResults(_searchController.text);
      },
      child: Container(
        margin: const EdgeInsets.only(right: 8),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: isSelected ? kGold : Colors.transparent,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: kGold),
        ),
        child: Text(
          label,
          style: TextStyle(
            color: isSelected ? kNavy : kWhite,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }

  // =====================
  // ICON BASED ON TITLE
  // =====================
  IconData _getCourseIcon(String title) {
    final t = title.toLowerCase();

    if (t.contains('speak')) return Icons.mic;
    if (t.contains('problem')) return Icons.psychology;
    if (t.contains('time')) return Icons.schedule;
    if (t.contains('emotional')) return Icons.favorite;

    return Icons.school;
  }

  Widget _buildResultCard(String title, String author, String price) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
        boxShadow: [
          BoxShadow(color: Colors.black.withOpacity(0.05), blurRadius: 10),
        ],
      ),
      child: Row(
        children: [
          Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
              color: kNavy,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(
              _getCourseIcon(title),
              color: Colors.white,
              size: 32,
            ),
          ),
          const SizedBox(width: 15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                    style: const TextStyle(fontWeight: FontWeight.bold)),
                Text(author, style: const TextStyle(color: Colors.grey)),
                const SizedBox(height: 6),
                Text(price,
                    style: const TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
