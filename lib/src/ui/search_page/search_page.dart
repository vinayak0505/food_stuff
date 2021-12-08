import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:food_stuff/src/ui/search_page/Components/auto_complete_list.dart';
import 'package:food_stuff/src/ui/search_page/Components/chips_list.dart';
import 'package:food_stuff/src/ui/search_page/Components/popular_search.dart';
import 'package:food_stuff/src/ui/search_page/Components/search_bar.dart';

class SearchPage extends HookWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
                        onPressed: () => Navigator.pop(context),
                      ),
                    ),
                    Expanded(
                        child: SearchBar(
                            readOnly: false, autofocus: true, onClick: () {})),
                  ],
                ),
                const AutoCompleteList(),
                const SizedBox(height: 16),
                PopularSearch(context: context),
                const SizedBox(height: 16),
                ChipsList(title: 'Difficulty'),
                ChipsList(title: 'Meal'),
                ChipsList(title: 'Occasion'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
