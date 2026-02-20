// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MaterialApp(home: YouthKeySeriesScreen()));
// }

// class YouthKeySeriesScreen extends StatelessWidget {
//   const YouthKeySeriesScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     // Custom dark blue color from the image
//     const Color primaryBg = Color(0xFF385370);
//     const Color accentGold = Color(0xFFCDB67A);

//     return Scaffold(
//       backgroundColor: primaryBg,
//       appBar: AppBar(
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//         leading: const Icon(Icons.arrow_back_ios_new, color: Colors.orange),
//         title: const Text(
//           'Youth K.E.Y Series',
//           style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
//         ),
//       ),
//       body: Stack(
//         children: [
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 20.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 // 1. Top Image Card
//                 ClipRRect(
//                   borderRadius: BorderRadius.circular(12),
//                   child: Image.network(
//                     'https://images.unsplash.com/photo-1524178232363-1fb2b075b655?auto=format&fit=crop&w=800&q=80',
//                     height: 200,
//                     width: double.infinity,
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//                 const SizedBox(height: 25),

//                 // 2. Module Title
//                 const Text(
//                   'Module 1: Building Confidence -\nCrafting Your Message',
//                   style: TextStyle(
//                     fontSize: 20,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.white,
//                   ),
//                 ),
//                 const SizedBox(height: 15),

//                 // 3. Progress Bar
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.end,
//                   children: [
//                     ClipRRect(
//                       borderRadius: BorderRadius.circular(10),
//                       child: const LinearProgressIndicator(
//                         value: 0.5,
//                         minHeight: 6,
//                         backgroundColor: Colors.white24,
//                         valueColor: AlwaysStoppedAnimation<Color>(Colors.orange),
//                       ),
//                     ),
//                     const SizedBox(height: 5),
//                     const Text('50%', style: TextStyle(color: Colors.white70)),
//                   ],
//                 ),
//                 const SizedBox(height: 20),

//                 // 4. Lesson Notes
//                 const Text(
//                   'Lesson Notes',
//                   style: TextStyle(
//                     fontSize: 18,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.white,
//                   ),
//                 ),
//                 const SizedBox(height: 10),
//                 const Text(
//                   '• @\n\n'
//                   'Voice Modulation, These anchorings builds\n'
//                   'Audience Language. The body language is an\n'
//                   'Audience Engagement tool to grow your thirst\n'
//                   'well list.',
//                   style: TextStyle(color: Colors.white, fontSize: 14, height: 1.4),
//                 ),
//                 const Spacer(),

//                 // 5. Navigation Buttons
//                 Row(
//                   children: [
//                     TextButton.icon(
//                       onPressed: () {},
//                       icon: const Icon(Icons.arrow_back_ios, color: Colors.white, size: 16),
//                       label: const Text('Previous', style: TextStyle(color: Colors.white, fontSize: 16)),
//                     ),
//                     const SizedBox(width: 10),
//                     Expanded(
//                       child: ElevatedButton(
//                         style: ElevatedButton.styleFrom(
//                           backgroundColor: accentGold,
//                           foregroundColor: Colors.black,
//                           padding: const EdgeInsets.symmetric(vertical: 15),
//                           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
//                         ),
//                         onPressed: () {},
//                         child: const Text(
//                           'Mark as Complete &\nNext Lesson',
//                           textAlign: TextAlign.center,
//                           style: TextStyle(fontWeight: FontWeight.bold),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//                 const SizedBox(height: 100), // Space for bottom nav
//               ],
//             ),
//           ),

//           // 6. Bottom Navigation Bar
//           Positioned(
//             bottom: 0,
//             left: 0,
//             right: 0,
//             child: Container(
//               height: 80,
//               decoration: const BoxDecoration(
//                 color: Color(0xFFF1F4F9),
//                 borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
//               ),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceAround,
//                 children: [
//                   _buildNavItem(Icons.home, "Home", isSelected: true),
//                   _buildNavItem(Icons.book, "Course"),
//                   const CircleAvatar(
//                     backgroundColor: Color(0xFFECEFF6),
//                     child: Icon(Icons.search, color: Color(0xFF385370)),
//                   ),
//                   _buildNavItem(Icons.chat_bubble, "Message"),
//                   _buildNavItem(Icons.person, "Account"),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildNavItem(IconData icon, String label, {bool isSelected = false}) {
//     return Column(
//       mainAxisSize: MainAxisSize.min,
//       children: [
//         Icon(icon, color: isSelected ? Colors.blue : Colors.blueGrey),
//         Text(label, style: TextStyle(color: isSelected ? Colors.blue : Colors.blueGrey, fontSize: 10)),
//       ],
//     );
//   }
// }

import 'package:flutter/material.dart';

class YouthKeySeriesScreen extends StatelessWidget {
  const YouthKeySeriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const Color primaryBg = Color(0xFF385370);
    const Color accentGold = Color(0xFFCDB67A);

    return Scaffold(
      backgroundColor: primaryBg,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'Youth K.E.Y Series',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(
                'https://images.unsplash.com/photo-1524178232363-1fb2b075b655',
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 25),
            const Text(
              'Module 1: Building Confidence',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 15),
            LinearProgressIndicator(
              value: 0.5,
              backgroundColor: Colors.white24,
              valueColor:
                  const AlwaysStoppedAnimation<Color>(Colors.orange),
            ),
            const Spacer(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: accentGold,
                foregroundColor: Colors.black,
                padding: const EdgeInsets.symmetric(vertical: 16),
              ),
              onPressed: () {},
              child: const Text(
                'Mark as Complete & Next Lesson',
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
