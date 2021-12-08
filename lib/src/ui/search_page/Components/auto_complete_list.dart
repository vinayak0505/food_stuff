import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:food_stuff/src/data/model/autocomplete_recipe_search/autocomplete_recipe_search.dart';
import 'package:food_stuff/src/ui/search_result_page/search_result_page.dart';

class AutoCompleteList extends HookWidget {
  const AutoCompleteList({required this.autoCompleteSearchList, Key? key}) : super(key: key);

  final List<AutocompleteRecipeSearch> autoCompleteSearchList;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const ScrollPhysics(),
      shrinkWrap: true,
      itemCount: autoCompleteSearchList.length,
      separatorBuilder: (_, __) => const Divider(),
      itemBuilder: (context, index) =>
          listOfFoodSearch(index, autoCompleteSearchList, context),
    );
  }

  Widget listOfFoodSearch(int index, List<AutocompleteRecipeSearch> searchList,
      BuildContext context) {
    return InkWell(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
        child: Text(searchList[index].title),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) {
            return SearchResultPage(
              userSearch: searchList[index].title,
            );
          }),
        );
      },
    );
  }
}
