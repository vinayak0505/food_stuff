import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:food_stuff/src/data/model/res_search/res_search.dart';
import 'package:food_stuff/src/ui/home_detail_page/home_detail_page.dart';
import 'package:food_stuff/src/ui/widgets/loading_screen.dart';
import 'package:food_stuff/src/utils/constants.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../search_result_viewmodel.dart';

class SearchResult extends HookConsumerWidget {
  const SearchResult({Key? key, this.crossAxisCount = 2, required this.userSearch}) : super(key: key);
  final String userSearch;
  final int crossAxisCount;

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
        crossAxisCount: crossAxisCount,
        itemCount: listOfFoodItems.value?.length,
        itemBuilder: (BuildContext context, int index) => InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return HomeDetailPage(
                id: listOfFoodItems.value![index].id,
              );
            }));
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(children: [
              ClipRRect(
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
              const SizedBox(height: 4),
              Text(listOfFoodItems.value?[index].title ?? "",
                  textAlign: TextAlign.center, style: kFoodNameFontStyle),
            ]),
          ),
        ),
        staggeredTileBuilder: (index) => const StaggeredTile.fit(1),
        mainAxisSpacing: 2,
        crossAxisSpacing: 16.0,
      ),
    );
  }
}
