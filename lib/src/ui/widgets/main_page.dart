import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_stuff/src/ui/home_page/home_page.dart';
import 'package:food_stuff/src/ui/personal_page/personal_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _index = 0;

  void toggle(int value) {
    _index = value;
    setState(() {});
  }

  final _pages = [
    const HomePage(),
    const PersonalPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _index,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        unselectedIconTheme: const IconThemeData(
          size: 26,
          opacity: 0.8,
        ),
        selectedIconTheme: const IconThemeData(
          size: 34,
          opacity: 1,
        ),
        onTap: toggle,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Discover',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'My Recipes',
          ),
        ],
      ),
    );
  }
}
