
import 'package:flutter/material.dart';

const Color kDarkNavy = Color(0xFF0D3B66);
const Color kPrimaryGold = Color(0xFFB08D2E);
const Color kWhite = Colors.white;

Widget buildBottomNavigationBar(BuildContext context, int currentIndex) {
  return BottomNavigationBar(
    currentIndex: currentIndex,
    backgroundColor: kDarkNavy,
    selectedItemColor: kPrimaryGold,
    unselectedItemColor: kWhite.withOpacity(0.6),
    type: BottomNavigationBarType.fixed,
    onTap: (index) {
      if (index == currentIndex) return;

      switch (index) {
        case 0:
          Navigator.pushReplacementNamed(context, '/home');
          break;
        case 1:
          Navigator.pushReplacementNamed(context, '/courses');
          break;
        case 2:
          Navigator.pushReplacementNamed(context, '/search');
          break;
        case 3:
          Navigator.pushReplacementNamed(context, '/messages');
          break;
        case 4:
          Navigator.pushReplacementNamed(context, '/account');
          break;
      }
    },
    items: const [
      BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
      BottomNavigationBarItem(icon: Icon(Icons.menu_book), label: 'Courses'),
      BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
      BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Messages'),
      BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
    ],
  );
}
