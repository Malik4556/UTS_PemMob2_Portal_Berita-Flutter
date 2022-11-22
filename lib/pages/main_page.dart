import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:portal_berita_uts_sem4/menu/category_menu.dart';
import 'package:portal_berita_uts_sem4/menu/home_menu.dart';
import 'package:portal_berita_uts_sem4/menu/trending_menu.dart';
import 'package:portal_berita_uts_sem4/menu/about_menu.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;
  final PageController _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: PageView(
          controller: _pageController,
          onPageChanged: (index) => setState(() => _currentIndex = index),
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const HomeMenu(),
            const TrendingMenu(),
            const CategoryMenu(),
            const AboutMenu(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _currentIndex,
        showElevation: false,
        itemCornerRadius: 5,
        curve: Curves.easeIn,
        onItemSelected: (index) {
          setState(() => _currentIndex = index);
          _pageController.jumpToPage(_currentIndex);
        },
        items: [
          BottomNavyBarItem(
            icon: const Icon(Icons.home),
            title: const Text('Home'),
            activeColor: Color.fromARGB(255, 0, 38, 141),
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: const Icon(Icons.moving_outlined),
            title: const Text('Trending'),
            activeColor: Color.fromARGB(255, 0, 38, 141),
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: const Icon(Icons.category_sharp),
            title: const Text('Category'),
            activeColor: Color.fromARGB(255, 0, 38, 141),
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: const Icon(Icons.info),
            title: const Text('About'),
            activeColor: Color.fromARGB(255, 0, 38, 141),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
