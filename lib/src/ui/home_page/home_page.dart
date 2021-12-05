import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_stuff/src/ui/home_page/Components/categoryl_view.dart';
import 'package:food_stuff/src/ui/home_page/Components/more_food_items.dart';
import 'package:food_stuff/src/ui/search_page/Components/search_bar.dart';
import 'package:food_stuff/src/ui/home_page/Components/view_pager.dart';
import 'package:food_stuff/src/utils/constants.dart';
import 'package:food_stuff/src/utils/routes.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    void navigation() {
      Navigator.pushNamed(context, MyRoutes.searchRoute);
    }

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SearchBar(
                readOnly: true,
                autofocus: false,
                onClick: navigation,
              ),
              const ViewPager(),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: Text('Trending', style: kSubtitleFontStyle),
              ),
              const CategoryHorizontalView(),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: Text('Popular Recipes This Week',
                    style: kSubtitleFontStyle),
              ),
              const CategoryHorizontalView(),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: Text(
                  'Fall Produce Recipes',
                  style: kSubtitleFontStyle,
                ),
              ),
              // Random
              const MoreFoodItems(),
            ],
          ),
        ),
      ),
      // bottomNavigationBar: const BottomNavigation(),
    );
  }
}
