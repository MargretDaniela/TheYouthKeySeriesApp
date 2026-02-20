
// import 'package:flutter/material.dart';
// const Color kDeepBlue = Color(0xFF0D3B66);
// class CourseCard extends StatelessWidget {
//   final String title;
//   final String instructor;
//   final String imagePath;
//   final String price;
//   final double rating;
//   final int reviews;
//   final bool isBestseller;

//   const CourseCard({
//     super.key,
//     required this.title,
//     required this.instructor,
//     required this.imagePath,
//     required this.price,
//     this.rating = 4.7,
//     this.reviews = 45000,
//     this.isBestseller = true,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 260,
//       height: 350, 
//       decoration: BoxDecoration(
//         color: kDeepBlue,
//         borderRadius: BorderRadius.circular(14),
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           // COURSE IMAGE
//           ClipRRect(
//             borderRadius: const BorderRadius.vertical(top: Radius.circular(14)),
//             child: Image.asset(
//               imagePath,
//               height: 160,
//               width: double.infinity,
//               fit: BoxFit.cover,
//             ),
//           ),

//           Padding(
//             padding: const EdgeInsets.all(12),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 // TITLE
//                 Text(
//                   title,
//                   maxLines: 2,
//                   overflow: TextOverflow.ellipsis,
//                   style: const TextStyle(
//                     color: Colors.white,
//                     fontSize: 16,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),

//                 const SizedBox(height: 6),

//                 // INSTRUCTOR
//                 Text(
//                   instructor,
//                   style: const TextStyle(
//                     color: Colors.white70,
//                     fontSize: 13,
//                   ),
//                 ),

//                 const SizedBox(height: 8),

//                 // RATING ROW
//                 Row(
//                   children: [
//                     Text(
//                       rating.toStringAsFixed(1),
//                       style: const TextStyle(
//                         color: Colors.orange,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     const SizedBox(width: 4),
//                     Row(
//                       children: List.generate(
//                         5,
//                         (index) => Icon(
//                           index < rating.round()
//                               ? Icons.star
//                               : Icons.star_border,
//                           color: Colors.orange,
//                           size: 16,
//                         ),
//                       ),
//                     ),
//                     const SizedBox(width: 4),
//                     Text(
//                       '($reviews)',
//                       style: const TextStyle(
//                         color: Colors.white54,
//                         fontSize: 12,
//                       ),
//                     ),
//                   ],
//                 ),

//                 const SizedBox(height: 8),

//                 // PRICE
//                 Text(
//                   price,
//                   style: const TextStyle(
//                     color: Colors.white,
//                     fontSize: 18,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),

//                 const SizedBox(height: 6),

//                 // BESTSELLER BADGE
//                 if (isBestseller)
//                   Container(
//                     padding: const EdgeInsets.symmetric(
//                         horizontal: 10, vertical: 4),
//                     decoration: BoxDecoration(
//                       color: Colors.yellow[700],
//                       borderRadius: BorderRadius.circular(4),
//                     ),
//                     child: const Text(
//                       'Bestseller',
//                       style: TextStyle(
//                         fontSize: 12,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.black,
//                       ),
//                     ),
//                   ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

const Color kDeepBlue = Color(0xFF0D3B66);

class CourseCard extends StatelessWidget {
  final String title;
  final String instructor;
  final String imagePath;
  final String price;
  final double rating;
  final int reviews;
  final bool isBestseller;

  const CourseCard({
    super.key,
    required this.title,
    required this.instructor,
    required this.imagePath,
    required this.price,
    this.rating = 4.7,
    this.reviews = 45000,
    this.isBestseller = true,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double cardWidth = screenWidth * 0.45;
    double imageHeight = 160;

    return Container(
      width: cardWidth,
      constraints: const BoxConstraints(minHeight: 240),
      decoration: BoxDecoration(
        color: kDeepBlue,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(14)),
            child: Image.asset(
              imagePath,
              height: imageHeight,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // TITLE
                Text(
                  title,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                // INSTRUCTOR
                Text(
                  instructor,
                  style: const TextStyle(
                    color: Colors.white70,
                    fontSize: 13,
                  ),
                ),
                const SizedBox(height: 8),
                // RATING ROW
                Row(
                  children: [
                    Text(
                      rating.toStringAsFixed(1),
                      style: const TextStyle(
                        color: Colors.orange,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(width: 4),
                    Row(
                      children: List.generate(
                        5,
                        (index) => Icon(
                          index < rating.round()
                              ? Icons.star
                              : Icons.star_border,
                          color: Colors.orange,
                          size: 16,
                        ),
                      ),
                    ),
                    const SizedBox(width: 4),
                    Text(
                      '($reviews)',
                      style: const TextStyle(
                        color: Colors.white54,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                // PRICE
                Text(
                  price,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                // BESTSELLER BADGE
                if (isBestseller)
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.yellow[700],
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: const Text(
                      'Bestseller',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
