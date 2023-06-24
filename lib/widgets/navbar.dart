// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sevima_knowledge/colors.dart';
import 'package:sevima_knowledge/screens/category.dart';
import 'package:sevima_knowledge/screens/dashboard.dart';
import 'package:sevima_knowledge/screens/profile.dart';
import 'package:sevima_knowledge/screens/saved_course.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  PageController pageController = PageController(initialPage: 0);
  int selectedIndex = 0;

  void onTapItem(int i) {
    setState(() {
      pageController.animateToPage(
        i,
        duration: Duration(milliseconds: 200),
        curve: Curves.easeInOut,
      );
      selectedIndex = i;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> screens = [Dashboard(), Category(), SavedCourse(), Profile()];
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: false,
        showSelectedLabels: false,
        currentIndex: selectedIndex,
        unselectedItemColor: Colors.black,
        selectedItemColor: blueTheme,
        type: BottomNavigationBarType.fixed,
        onTap: onTapItem,
        items: [
          BottomNavigationBarItem(
              icon: Icon(selectedIndex == 0 ? Iconsax.home_25 : Iconsax.home_2),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                  selectedIndex == 1 ? Iconsax.category5 : Iconsax.category),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(selectedIndex == 2 ? Iconsax.save_25 : Iconsax.save_2),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(selectedIndex == 3
                  ? Iconsax.profile_circle5
                  : Iconsax.profile_circle),
              label: ""),
        ],
      ),
      body: PageView(
        controller: pageController,
        physics: NeverScrollableScrollPhysics(),
        children: screens,
      ),
    );
  }
}
