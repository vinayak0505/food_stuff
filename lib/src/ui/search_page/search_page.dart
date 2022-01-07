import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:food_stuff/src/data/model/autocomplete_recipe_search/autocomplete_recipe_search.dart';
import 'package:food_stuff/src/ui/search_page/Components/auto_complete_list.dart';
import 'package:food_stuff/src/ui/search_page/Components/popular_search.dart';
import 'package:food_stuff/src/ui/search_page/Components/search_bar.dart';
import 'package:food_stuff/src/ui/search_page/search_viewmodel.dart';
import 'package:food_stuff/src/ui/search_result_page/search_result_page.dart';
import 'package:food_stuff/src/ui/widgets/responsive.dart';
import 'package:food_stuff/src/utils/constants.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SearchPage extends HookConsumerWidget {
  const SearchPage({this.userSearch, Key? key}) : super(key: key);

  final String? userSearch;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchController = useTextEditingController(text: userSearch);
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
                Wrap(
                  direction: Axis.horizontal,
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
                        if (value.isNotEmpty) {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) {
                              return SearchResultPage(
                                userSearch: value,
                              );
                            }));
                        }
                      },
                      searchController: searchController,
                    )),
                  ]),
                AutoCompleteList(
                    autoCompleteSearchList: listOfAutoComplete.value),
                const SizedBox(height: 16),
                Responsive(
                  mobile: PopularSearch(context: context), 
                  desktop: PopularSearch(context: context, crossAxisCount: 3)),
                if(kIsWeb)
                const SizedBox(height: 16),
                if(kIsWeb)
                SizedBox(
                  height: 350,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Flexible(
                        child: Material(
                          clipBehavior: Clip.antiAlias,
                          borderRadius: const BorderRadius.all(
              Radius.circular(kRoundedRectangleRadius),
            ),
                          child: InkWell(
                            onTap: (){
                              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return const SearchResultPage(userSearch: 'christmas');
                  }));
                            },
                            child: ClipRRect(
                              clipBehavior: Clip.antiAlias,
                              borderRadius: BorderRadius.circular(kRoundedRectangleRadius),
                              child: Image.asset('image/christmas.jpg',
                              fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        )
                      ),
                      Flexible(
                        child: Material(
                          clipBehavior: Clip.antiAlias,
                          borderRadius: const BorderRadius.all(
              Radius.circular(kRoundedRectangleRadius),
            ),
                          child: InkWell(
                            onTap: (){
                              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return const SearchResultPage(userSearch: 'halloween');
                  }));
                            },
                            child: ClipRRect(
                              clipBehavior: Clip.antiAlias,
                              borderRadius: BorderRadius.circular(kRoundedRectangleRadius),
                              child: Image.asset('image/halloween.jpg',
                              fit: BoxFit.contain),
                            ),
                          ),
                        )
                      ),
                    ]),
                )
              ]),
          ),
        ),
      ),
    );
  }
}
