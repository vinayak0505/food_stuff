import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:food_stuff/src/utils/constants.dart';

class BottomNavigation extends HookWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _navigationIndex = useState(0);
    return BottomNavigationBar(
      currentIndex: _navigationIndex.value,
      onTap: (int index) => _navigationIndex.value = index,
      type: BottomNavigationBarType.shifting,
      elevation: 8,
      backgroundColor: darkColor,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
        ),
      ],
    );
  }
}
