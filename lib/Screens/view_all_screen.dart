import 'package:flutter/material.dart';

const Color kNavy = Color(0xFF0D3B66);
const Color kGold = Color(0xFFF2C94C);
const Color kWhite = Colors.white;
const Color kLightGrayBg = Color(0xFFF5F5F5);

class ViewAllScreen extends StatelessWidget {
  final String category;
  final List<String> courses;

  const ViewAllScreen({super.key, required this.category, required this.courses});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kLightGrayBg,
      appBar: AppBar(
        backgroundColor: kNavy,
        title: Text(category, style: const TextStyle(color: kWhite)),
        iconTheme: const IconThemeData(color: kWhite),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: courses.length,
        itemBuilder: (context, index) => _buildCourseCard(courses[index]),
      ),
    );
  }

  Widget _buildCourseCard(String title) {
    return Container(
      height: 120,
      margin: const EdgeInsets.only(bottom: 16),
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
      child: Row(
        children: [
          // IMAGE/ICON
          Container(
            width: 120,
            height: double.infinity,
            decoration: BoxDecoration(
              color: kGold.withOpacity(0.15),
              borderRadius: const BorderRadius.horizontal(left: Radius.circular(16)),
            ),
            child: const Icon(Icons.school, size: 50, color: kGold),
          ),
          // DETAILS
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style:
                          const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 8),
                  const Text("US\$59.99",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}