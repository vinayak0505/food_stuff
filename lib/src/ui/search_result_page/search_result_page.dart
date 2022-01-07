import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:food_stuff/src/ui/search_page/Components/search_bar.dart';
import 'package:food_stuff/src/ui/search_page/search_page.dart';
import 'package:food_stuff/src/ui/search_result_page/Components/search_result.dart';
import 'package:food_stuff/src/ui/widgets/responsive.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SearchResultPage extends HookConsumerWidget {
  const SearchResultPage({required this.userSearch, Key? key})
      : super(key: key);

  final String userSearch;

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final searchResultController = useTextEditingController(text: userSearch);

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: <Widget>[
                  IconButton(
                    icon: const Icon(Icons.arrow_back),
                    onPressed: () => Navigator.pop(context),
                  ),
                  Expanded(
                      child: SearchBar(
                    readOnly: false,
                    autofocus: false,
                    onClick: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return SearchPage(userSearch: userSearch);
                          }),
                        );
                    },
                    searchController: searchResultController
                  )),
                ],
              ),
              Responsive(
                mobile: SearchResult(userSearch: userSearch),
                tablet: SearchResult(userSearch: userSearch, crossAxisCount: 3),
                desktop: SearchResult(userSearch: userSearch, crossAxisCount: 4)),
            ]),
        ),
      ),
    );
  }
}
