import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_stuff/src/ui/home_page/Components/category_view.dart';
import 'package:food_stuff/src/ui/home_page/Components/more_food_items.dart';
import 'package:food_stuff/src/ui/home_page/Components/view_pager.dart';
import 'package:food_stuff/src/ui/search_page/Components/search_bar.dart';
import 'package:food_stuff/src/utils/constants.dart';
import 'package:food_stuff/src/utils/routes.dart';
import 'package:food_stuff/src/utils/strings.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomePage extends HookConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    void navigation() {
      Navigator.pushNamed(context, MyRoutes.searchRoute);
    }

    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SearchBar(
              readOnly: true,
              autofocus: false,
              onClick: navigation,
            ),
            // const ViewPager(),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Text(sweets, style: kSubtitleFontStyle),
            ),
            const CategoryHorizontalView(tag: "sweets"),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Text(healthyFoods, style: kSubtitleFontStyle),
            ),
            // const CategoryHorizontalView(tag: "vegetables"),
            // const MoreFoodItems(),
          ],
        ),
      )),
    );
  }
}
