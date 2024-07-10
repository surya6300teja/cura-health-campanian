import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:glee/screens/home.dart';
import 'package:glee/screens/playlist.dart';
import 'package:glee/screens/profile.dart';
import 'package:glee/screens/profile_page.dart';
import 'package:glee/screens/settings.dart';
import 'package:glee/screens/offers.dart';

import 'forum_detail.dart';


class Nav extends StatefulWidget {
  const Nav({super.key, this.index});

  final int? index;

  @override
  State<Nav> createState() => _NavState();
}

class _NavState extends State<Nav> {
  int currentIndex = 0;
  List pages = [
    const Home(),
    Companion(),
    ForumDetailPage(),
    ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    final ColorScheme color = Theme.of(context).colorScheme;
    return Scaffold(
      body: pages[widget.index ?? currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        elevation: 0,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/home.svg',
              color: const Color.fromRGBO(205, 208, 227, 1),
            ),
            activeIcon: SvgPicture.asset(
              'assets/icons/home.svg',
              color: color.onPrimary,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icons/chat-bot_13889280.png',
              width: 35.0, // Adjust this value to control the width
              height: 35.0,// Replace with your PNG file path
              color: const Color.fromRGBO(205, 208, 227, 1), // This might not work as expected for PNGs
            ),
            activeIcon: Image.asset(
              'assets/icons/chat-bot_13889294.png',
              width: 35.0, // Adjust this value to control the width
              height: 35.0,// Replace with your PNG file path
              color: Colors.black.withOpacity(0.9), // This might not work as expected for PNGs
            ),
            label: 'Playlist',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/profile.svg',
              color: const Color.fromRGBO(205, 208, 227, 1),
            ),
            activeIcon: SvgPicture.asset(
              'assets/icons/profile.svg',
              color: color.onPrimary,
            ),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/settings.svg',
              color: const Color.fromRGBO(205, 208, 227, 1),
            ),
            activeIcon: SvgPicture.asset(
              'assets/icons/settings.svg',
              color: color.onPrimary,
            ),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
