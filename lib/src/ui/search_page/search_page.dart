import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:food_stuff/src/data/model/autocomplete_recipe_search/autocomplete_recipe_search.dart';
import 'package:food_stuff/src/ui/search_page/Components/auto_complete_list.dart';
import 'package:food_stuff/src/ui/search_page/Components/chips_list.dart';
import 'package:food_stuff/src/ui/search_page/Components/popular_search.dart';
import 'package:food_stuff/src/ui/search_page/Components/search_bar.dart';
import 'package:food_stuff/src/ui/search_page/search_viewmodel.dart';
import 'package:food_stuff/src/ui/search_result_page/search_result_page.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SearchPage extends HookConsumerWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchController = useTextEditingController();
    final update = useValueListenable(searchController);
    final ValueNotifier<List<AutocompleteRecipeSearch>> listOfAutoComplete =
        useState(List.empty());

    useEffect(() {
      ref
          .read(searchProvider.notifier)
          .getAutocompleteSearch(query: update.text)
          .then((value) {
        listOfAutoComplete.value = value;
      });
    }, [update]);
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
                    IconButton(
                      icon: const Icon(Icons.arrow_back),
                      onPressed: () => Navigator.pop(context),
                    ),
                    Expanded(
                        child: SearchBar(
                      readOnly: false,
                      autofocus: true,
                      onClick: () {},
                      onSubitted: (value) {
                        if(value.isNotEmpty) {
                          Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return SearchResultPage(userSearch: value,);
                          }),
                        );
                        }
                      },
                      searchController: searchController,
                    )),
                  ],
                ),
                AutoCompleteList(
                    autoCompleteSearchList: listOfAutoComplete.value),
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
