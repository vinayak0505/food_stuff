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
      crossAxisCount: 2,
      childAspectRatio: ((kScreenWidth(context) / 2) / 100),
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      children: popularSearchList.map((String value) {
        return Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
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
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: const <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 16.0),
                    child: Icon(Icons.arrow_back),
                  ),
                  Expanded(
                    child: SearchBar(),
                  ),
                ],
              ),
              popularSearch(context),
              SizedBox(
                height: 500,
                width: kScreenWidth(context),
                child: ChipsList(title: 'Difficulty'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
