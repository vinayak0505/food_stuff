import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:food_stuff/src/data/model/res_search/res_search.dart';
import 'package:food_stuff/src/ui/widgets/loading_screen.dart';
import 'package:food_stuff/src/utils/constants.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../search_result_viewmodel.dart';

class SearchResult extends HookConsumerWidget {
  const SearchResult({Key? key, required this.userSearch}) : super(key: key);
  final String userSearch;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ValueNotifier<List<Result>?> listOfFoodItems = useState(null);

    useEffect(() {
      ref
          .read(searchResultProvider.notifier)
          .getItems(query: userSearch)
          .then((value) {
        listOfFoodItems.value = value.results;
      });
    }, []);

    return LoadingScreen(
      data: listOfFoodItems.value,
      child: StaggeredGridView.countBuilder(
        physics: const ScrollPhysics(),
        padding: const EdgeInsets.all(16.0),
        shrinkWrap: true,
        crossAxisCount: 2,
        itemCount: listOfFoodItems.value?.length,
        itemBuilder: (BuildContext context, int index) => Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 6.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(kRoundedRectangleRadius),
                child: Image.network(
                  listOfFoodItems.value?[index].image ?? "",
                  errorBuilder: (_, __, ___) => Container(
                            height: 150,
                            alignment: Alignment.center,
                            child: const Icon(Icons.error),
                          ),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 4.0),
              child: Text(
                listOfFoodItems.value?[index].title ?? "",
                textAlign: TextAlign.center,
                style: kFoodNameFontStyle,
              ),
            ),
          ],
        ),
        staggeredTileBuilder: (index) => const StaggeredTile.fit(1),
        mainAxisSpacing: 2,
        crossAxisSpacing: 16.0,
      ),
    );
  }
}
