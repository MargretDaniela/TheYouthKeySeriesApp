// import 'package:flutter/material.dart';
// import 'home_screen.dart';

// class OnboardingScreen extends StatefulWidget {
//   const OnboardingScreen({super.key});

//   @override
//   State<OnboardingScreen> createState() => _OnboardingScreenState();
// }

// class _OnboardingScreenState extends State<OnboardingScreen> {
//   final PageController _controller = PageController();
//   bool isLastPage = false;

//   @override
//   void dispose() {
//     _controller.dispose(); 
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.all(20),
//         child: PageView(
//           controller: _controller,
//           onPageChanged: (index) {
//             setState(() => isLastPage = index == 2);
//           },
//           children: [
//             buildPage(
//               image: 'images/The_app_Logo.png',
//               title: 'Welcome to The Youth K.E.Y Series App ',
//               description: 'Easily manage your tasks anywhere, anytime.',
//             ),
//             buildPage(
//               image: 'images/girl.png',
//               title: 'Stay Organized',
//               description: 'Track your daily progress with smart reminders.',
//             ),
//             buildPage(
//               image: 'images/login page.png',
//               title: 'Achieve Your Goals',
//               description: 'Turn your plans into action effortlessly.',
//             ),
//           ],
//         ),
//       ),
//       bottomSheet: isLastPage
//           ? SizedBox(
//               height: 60,
//               width: double.infinity,
//               child: ElevatedButton(
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: Colors.deepPurple,
//                 ),
//                 onPressed: () {
//                   Navigator.pushReplacement(
//                     context,
//                     MaterialPageRoute(
//                       builder: (_) => const HomeScreen(),
//                     ),
//                   );
//                 },
//                 child: const Text(
//                   'Get Started',
//                   style: TextStyle(fontSize: 20, color: Colors.white),
//                 ),
//               ),
//             )
//           : Container(
//               height: 60,
//               padding: const EdgeInsets.symmetric(horizontal: 20),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   TextButton(
//                     onPressed: () => _controller.jumpToPage(2),
//                     child: const Text('Skip'),
//                   ),
//                   TextButton(
//                     onPressed: () => _controller.nextPage(
//                       duration: const Duration(milliseconds: 500),
//                       curve: Curves.easeInOut,
//                     ),
//                     child: const Text('Next'),
//                   ),
//                 ],
//               ),
//             ),
//     );
//   }

//   Widget buildPage({
//     required String image,
//     required String title,
//     required String description,
//   }) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Image.asset(image, height: 300),
//         const SizedBox(height: 30),
//         Text(
//           title,
//           style: const TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
//         ),
//         const SizedBox(height: 15),
//         Text(
//           description,
//           textAlign: TextAlign.center,
//           style: TextStyle(fontSize: 18, color: Colors.grey[700]),
//         ),
//       ],
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'login_screen.dart'; // Navigate to login after onboarding

// --- BRAND COLORS ---
const Color kPrimaryGold = Color(0xFFEAB503);
const Color kDeepBlue = Color(0xFF1A1A1A);
const Color kSecondaryBlue = Color(0xFF004C99);

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  final List<Map<String, String>> _onboardingData = [
    {
      "image": "images/on_1.png",
      "title": "Unlock Your Potential",
      "desc": "Empowering youth through knowledge, education, and growth."
    },
    {
      "image": "images/on_2.png",
      "title": "Engage & Learn",
      "desc": "Interactive programs that inspire confidence and creativity."
    },
    {
      "image": "images/on_3.png",
      "title": "Achieve Your Goals",
      "desc": "Turn your dreams into reality with The Youth K.E.Y. Series."
    },
  ];

  void _goToNextPage() {
    if (_currentPage < _onboardingData.length - 1) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeInOut,
      );
    } else {
      _finishOnboarding();
    }
  }

  void _finishOnboarding() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (_) => const LoginScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            // --- PageView for Slides ---
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                itemCount: _onboardingData.length,
                onPageChanged: (index) {
                  setState(() {
                    _currentPage = index;
                  });
                },
                itemBuilder: (context, index) {
                  final data = _onboardingData[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // --- IMAGE ---
                        Image.asset(
                          data["image"]!,
                          height: 250,
                        ),
                        const SizedBox(height: 40),
                        // --- TITLE ---
                        Text(
                          data["title"]!,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: kDeepBlue,
                          ),
                        ),
                        const SizedBox(height: 16),
                        // --- DESCRIPTION ---
                        Text(
                          data["desc"]!,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                            height: 1.5,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),

            // --- DOT INDICATORS ---
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                _onboardingData.length,
                (index) => AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  height: 10,
                  width: _currentPage == index ? 24 : 10,
                  decoration: BoxDecoration(
                    color: _currentPage == index ? kPrimaryGold : Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),

            // --- BUTTONS ---
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              child: SizedBox(
                width: double.infinity,
                height: 55,
                child: ElevatedButton(
                  onPressed: _goToNextPage,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: kPrimaryGold,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Text(
                    _currentPage == _onboardingData.length - 1
                        ? "Get Started"
                        : "Next",
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: kDeepBlue,
                    ),
                  ),
                ),
              ),
            ),

            // --- SKIP LINK ---
            if (_currentPage < _onboardingData.length - 1)
              TextButton(
                onPressed: _finishOnboarding,
                child: const Text(
                  "Skip",
                  style: TextStyle(
                    color: kSecondaryBlue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
