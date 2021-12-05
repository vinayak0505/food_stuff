import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:food_stuff/src/ui/home_page/home_page.dart';
import 'package:food_stuff/src/ui/personal_page/personal_page.dart';

class BottomNavigation extends HookWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final navigationIndex = useState(0);

    Widget first() {
      return Container(
        child: const Center(
          child: Text('First'),
        ),
      );
    }

    Widget second() {
      return Container(
        child: const Center(
          child: Text('Second'),
        ),
      );
    }

    List<Widget> _pages = [
      HomePage(),
      second(),
    ];
    return Scaffold(
      body: _pages[navigationIndex.value],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: navigationIndex.value,
        onTap: (int index) {
          navigationIndex.value = index;
        },
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
