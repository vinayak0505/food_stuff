import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:food_stuff/src/ui/search_page/Components/chips_list.dart';
import 'package:food_stuff/src/ui/search_page/Components/search_bar.dart';
import 'package:food_stuff/src/ui/search_result_page/Components/search_result.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

bool userSearchByTap = false;

class SearchResultPage extends HookWidget {
  const SearchResultPage({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: SearchBar(
              readOnly: false,
              autofocus: false,
              onClick: () {},
            ),
          ),
          // flexibleSpace: userSearchByTap ? Chip(
          //   useDeleteButtonTooltip: true,
          //   label: 'abc',
          //   // label: Consumer(
          //   //   builder: (context, ref, child) {
          //   //     final userSearch = ref.watch(userSearchProvider);
          //   //     return Text(userSearch ?? '');
          //   //   },
          //   ) :
          // ),
        ),
        body: const SearchResult(),
      ),
    );
  }
}
