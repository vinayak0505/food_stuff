import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:food_stuff/src/data/model/autocomplete_recipe_search/autocomplete_recipe_search.dart';
import 'package:food_stuff/src/ui/search_page/search_viewmodel.dart';
import 'package:food_stuff/src/ui/search_result_page/Components/search_result.dart';
import 'package:food_stuff/src/ui/search_result_page/search_result_page.dart';
import 'package:food_stuff/src/ui/widgets/loading_screen.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AutoCompleteList extends HookConsumerWidget {
  const AutoCompleteList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ValueNotifier _autoCompleteSearchList = useState(List.empty());

    useEffect(() {
      ref
          .read(searchProvider.notifier)
          .getAutocompleteSearch(query: 'bur')
          .then((value) {
        _autoCompleteSearchList.value = value;
      });
    }, []);

    return LoadingScreen(
      data: _autoCompleteSearchList.value,
      child: ListView.separated(
        physics: const ScrollPhysics(),
        shrinkWrap: true,
        itemCount: _autoCompleteSearchList.value.length,
        separatorBuilder: (_, __) => const Divider(),
        itemBuilder: (context, index) =>
            listOfFoodSearch(index, _autoCompleteSearchList.value, context),
      ),
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
          MaterialPageRoute(
              builder: (context) => SearchResultPage(
                    userSearch: searchList[index].title,
                  )),
        );
      },
    );
  }
}
