import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_stuff/src/ui/search_page/Components/chips_list.dart';
import 'package:food_stuff/src/ui/search_page/Components/search_bar.dart';
import 'package:food_stuff/src/utils/constants.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  Widget popularSearch(BuildContext context) {
    final List<String> popularSearchList = [
      'Easy Dinner',
      '5 ingredients or less',
      'Under 30 minutes',
      'Chicken',
      'Breakfast',
      'Dessert'
    ];
    return GridView.count(
      physics: const ScrollPhysics(),
      crossAxisCount: 2,
      childAspectRatio: ((kScreenWidth(context) / 2) / 100),
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      children: popularSearchList.map((String value) {
        return Container(
          decoration: BoxDecoration(
            color: Theme.of(context).cardColor,
            borderRadius: const BorderRadius.all(
              Radius.circular(kRoundedRectangleRadius),
            ),
          ),
          margin: const EdgeInsets.all(5.0),
          child: Center(
            child: Text(
              value,
            ),
          ),
        );
      }).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Hero(
        tag: 'Search Bar',
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: IconButton(
                          icon: const Icon(Icons.arrow_back),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                      Expanded(
                        child: SearchBar(
                          readOnly: false,
                          autofocus: true,
                          onClick: () {},
                        ),
                      ),
                    ],
                  ),
                  popularSearch(context),
                  const SizedBox(
                    height: 16,
                  ),
                  ChipsList(title: 'Difficulty'),
                  ChipsList(title: 'Meal'),
                  ChipsList(title: 'Occasion'),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}