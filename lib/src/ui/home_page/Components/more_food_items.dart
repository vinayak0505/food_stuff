import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:food_stuff/src/data/model/random_recipe/random_recipe.dart';
import 'package:food_stuff/src/ui/widgets/loading_screen.dart';
import 'package:food_stuff/src/utils/constants.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../home_viewmodel.dart';

class MoreFoodItems extends HookConsumerWidget {
  const MoreFoodItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isSwitched = useState(false);
    final ValueNotifier<List<Recipe>> listOfFoodItems = useState(List.empty());

    useEffect(() {
      ref.read(homeProvider.notifier).getRandomRecipe().then((value) {
        listOfFoodItems.value = value.recipes;
      });
    }, []);

    void onlyVegetarian(bool value) {
      if (isSwitched.value == value) return;
      isSwitched.value = value;
      listOfFoodItems.value = List.empty();
      ref.read(homeProvider.notifier).getRandomRecipe().then((value) {
        listOfFoodItems.value = value.recipes;
      });
    }

    return LoadingScreen(
      data: listOfFoodItems.value,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Switch(
            value: isSwitched.value,
            onChanged: onlyVegetarian,
            activeTrackColor: Colors.lightGreenAccent,
            activeColor: Colors.green,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: StaggeredGridView.countBuilder(
              scrollDirection: Axis.vertical,
              physics: const ScrollPhysics(),
              shrinkWrap: true,
              crossAxisCount: 2,
              itemCount: listOfFoodItems.value.length,
              itemBuilder: (BuildContext context, int index) => Flexible(
                child: Column(
                  children: [
                    (index%3 == 0)?SizedBox(height:0):SizedBox(height: 100),
                    ClipRRect(
                      borderRadius:
                          BorderRadius.circular(kRoundedRectangleRadius),
                      child: Image.network(
                        listOfFoodItems.value[index].image ?? '',
                        errorBuilder: (_,__,___) => const Center(child: Icon(Icons.error)),
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                    Center(
                      child: Text(
                        listOfFoodItems.value[index].title ?? '',
                        textAlign: TextAlign.center,
                        style: kFoodNameFontStyle,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          listOfFoodItems.value[index].readyInMinutes
                              .toString(),
                          style: kFoodNameFontStyle,
                        ),
                        Row(
                          children: [
                            Text(
                              listOfFoodItems.value[index].servings.toString(),
                              style: kFoodNameFontStyle,
                            ),
                            const Icon(Icons.lunch_dining)
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
              staggeredTileBuilder: (index) => const StaggeredTile.fit(1),
              mainAxisSpacing: 2,
              crossAxisSpacing: 16.0,
            ),
          ),
        ],
      ),
    );
  }
}
