import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:food_stuff/src/ui/home_page/Components/category_horizontal_view.dart';
import 'package:food_stuff/src/ui/home_page/Components/more_food_items.dart';
import 'package:food_stuff/src/ui/widgets/bottom_navigation.dart';
import 'package:food_stuff/src/ui/home_page/Components/view_pager.dart';
import 'package:food_stuff/src/utils/constants.dart';

class HomePage extends HookWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget searchBar() {
      return Container(
        padding: const EdgeInsets.all(16.0),
        child: TextFormField(
          keyboardType: TextInputType.text,
          decoration: kTextFieldDecoration.copyWith(
            hintText: 'Search for Recipes',
            prefixIcon: const Icon(Icons.search),
          ),
        ),
      );
    }

    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            searchBar(),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: const [
                  // ViewPager(),
                  CategoryHorizontalView(subtitle: 'Trending'),
                  // CategoryHorizontalView(subtitle: 'Popular'),
                  // CategoryHorizontalView(subtitle: 'Highest Rating'),
                  //Random
                  // MoreFoodItems(),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: const BottomNavigation(),
      ),
    );
  }
}
