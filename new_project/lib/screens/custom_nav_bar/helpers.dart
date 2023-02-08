import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomNavBarHelper {
  List myPages = [
    const MyProfile(),
    const MyGroups(),
    const MyHomePage(),
    const MyFav(),
    const MyMessages()
  ];
  List myIcons = [
    CustomNavigationBarItem(
        icon: const Icon(Icons.person_outlined),
        selectedIcon: const Icon(
          Icons.person_outlined,
          size: 40,
        )),
    CustomNavigationBarItem(
        icon: const Icon(Icons.groups_outlined),
        selectedIcon: const Icon(
          Icons.groups_outlined,
          size: 40,
        )),
    CustomNavigationBarItem(
        icon: const Icon(Icons.public),
        selectedIcon: const Icon(
          Icons.public_outlined,
          size: 40,
        )),
    CustomNavigationBarItem(
        icon: const Icon(CupertinoIcons.heart),
        selectedIcon: const Icon(
          CupertinoIcons.heart,
          size: 40,
        )),
    CustomNavigationBarItem(
        icon: const Icon(Icons.message_outlined),
        selectedIcon: const Icon(
          Icons.message_outlined,
          size: 40,
        ))
  ];
}

class MyProfile extends StatelessWidget {
  const MyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("This is profiles page")),
    );
  }
}

class MyGroups extends StatelessWidget {
  const MyGroups({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("This is groups page")),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("This is home page")),
    );
  }
}

class MyFav extends StatelessWidget {
  const MyFav({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("This is favorites page")),
    );
  }
}

class MyMessages extends StatelessWidget {
  const MyMessages({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("This is messages page")),
    );
  }
}
