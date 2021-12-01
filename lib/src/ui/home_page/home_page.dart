import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:food_stuff/src/ui/widgets/bottom_navigation.dart';
import 'package:food_stuff/src/ui/home_page/Components/view_pager.dart';
import 'package:food_stuff/src/utils/constants.dart';

class HomePage extends HookWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // List<String> categories = [
    //   'Recommended',
    //   'Popular',
    //   'Trending',
    //   'Rating',
    //   'Newest',
    // ];
    // int? selectedCategory;
    // Widget _categoryListState() {
    //   return SizedBox(
    //     height: 60,
    //     child: ListView.builder(
    //       scrollDirection: Axis.horizontal,
    //       itemCount: categories.length,
    //       itemBuilder: (context, index) => GestureDetector(
    //         child: Container(
    //           padding: const EdgeInsets.symmetric(horizontal: 8.0),
    //           child: Text(
    //             categories[index],
    //             style: index == selectedCategory
    //                 ? kCategorySelected
    //                 : kCategoryUnselected,
    //           ),
    //         ),
    //         onTap: () {
    //           selectedCategory = index;
    //         },
    //       ),
    //     ),
    //   );
    // }

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
        body: Column(children: [
          searchBar(),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                ViewPager(),
                // CategoryHorizontalView();
              ],
            ),
          ),
        ]),
        bottomNavigationBar: const BottomNavigation(),
      ),
    );
  }
}
