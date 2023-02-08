import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:custom_navigation_bar/helpers.dart';

class MyCustomNavBar extends StatefulWidget {
  const MyCustomNavBar({super.key});

  @override
  State<MyCustomNavBar> createState() => MyCustomNavBarState();
}

class MyCustomNavBarState extends State<MyCustomNavBar> {
  int _currentIndex = 2;
  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: PageView(
        controller: _pageController,
        onPageChanged: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
        children: CustomNavBarHelper().myPages.cast(),
      )),
      bottomNavigationBar: CustomNavigationBar(
        borderRadius: const Radius.circular(30),
        iconSize: 30.0,
        isFloating: true,
        selectedColor: const Color.fromARGB(255, 12, 65, 255),
        unSelectedColor: Colors.black,
        backgroundColor: Colors.white,
        items: CustomNavBarHelper().myIcons.cast(),
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
          _pageController.animateToPage(index,
              duration: const Duration(milliseconds: 500), curve: Curves.ease);
        },
      ),
    );
  }
}
