import 'package:flutter/material.dart';
import 'package:food_stuff/src/ui/search_page/Components/search_bar.dart';
import 'package:food_stuff/src/ui/search_result_page/Components/search_result.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SearchResultPage extends HookConsumerWidget {
  const SearchResultPage({required this.userSearch, Key? key})
      : super(key: key);

  final String userSearch;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: SearchBar(
              readOnly: false,
              autofocus: false,
              onClick: () {Navigator.pop(context);},
            ),
          ),
        ),
        body: SearchResult(userSearch: userSearch),
      ),
    );
  }
}
