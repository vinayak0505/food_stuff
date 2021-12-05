import 'package:flutter/material.dart';
import 'package:food_stuff/src/ui/search_page/Components/search_bar.dart';
import 'package:food_stuff/src/ui/search_result_page/Components/search_result.dart';
import 'package:food_stuff/src/utils/constants.dart';

class SearchResultPage extends StatelessWidget {
  const SearchResultPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: SearchBar(readOnly: false, autofocus: false, onClick: () {}),
          ),
        ),
        body: SearchResult(),
      ),
    );
  }
}
