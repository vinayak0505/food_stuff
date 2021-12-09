import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:food_stuff/src/data/model/random_recipe/random_recipe.dart';
import 'package:food_stuff/src/ui/widgets/loading_screen.dart';
import 'package:food_stuff/src/utils/constants.dart';
import 'package:food_stuff/src/utils/strings.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../home_viewmodel.dart';

class MoreFoodItems extends HookConsumerWidget {
  const MoreFoodItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isSwitched = useState(false);
    final ValueNotifier<List<Recipe>?> listOfFoodItems = useState(null);

    useEffect(() {
      ref.read(homeProvider.notifier).getRandomRecipe().then((value) {
        listOfFoodItems.value = value.recipes;
      });
    }, []);

    void onlyVegetarian(bool value) {
      if (isSwitched.value == value) return;
      isSwitched.value = value;
      listOfFoodItems.value = null;
      ref.read(homeProvider.notifier).getRandomRecipe().then((value) {
        listOfFoodItems.value = value.recipes;
      });
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Row(
            children: [
              const Text(
                otherFoods,
                style: kSubtitleFontStyle,
              ),
              const Spacer(),
              Switch(
                value: isSwitched.value,
                onChanged: onlyVegetarian,
                activeTrackColor: Colors.lightGreenAccent,
                activeColor: Colors.green,
              ),
              const SizedBox(width: 8),
              const Text("Veg Only")
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: LoadingScreen(
            data: listOfFoodItems.value,
            child: StaggeredGridView.countBuilder(
              scrollDirection: Axis.vertical,
              physics: const ScrollPhysics(),
              shrinkWrap: true,
              crossAxisCount: 2,
              itemCount: listOfFoodItems.value?.length,
              itemBuilder: (BuildContext context, int index) => ClipRRect(
                borderRadius: BorderRadius.circular(kRoundedRectangleRadius),
                child: AnimatedContainer(
                  color: Theme.of(context).canvasColor,
                  duration: const Duration(seconds: 1),
                  curve: Curves.fastOutSlowIn,
                  child: Column(
                    children: [
                      AspectRatio(
                        aspectRatio: 1.48, //todo: may be Not correct solution
                        child: Image.network(
                          listOfFoodItems.value?[index].image ?? '',
                          errorBuilder: (_, __, ___) => Container(
                            height: 150,
                            alignment: Alignment.center,
                            child: const Icon(Icons.error),
                          ),
                          frameBuilder: (BuildContext context, Widget child,
                              int? frame, bool wasSynchronouslyLoaded) {
                            if (wasSynchronouslyLoaded) return child;
                            return AnimatedOpacity(
                              opacity: frame == null ? 0 : 1,
                              duration: const Duration(seconds: 2),
                              curve: Curves.easeOut,
                              child: child,
                            );
                          },
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(listOfFoodItems.value![index].readyInMinutes
                                    .toString() +
                                " "),
                            const Icon(Icons.alarm, size: 16.0),
                            const Spacer(),
                            Text(listOfFoodItems.value![index].servings
                                    .toString() +
                                " "),
                            const Icon(Icons.star, size: 16.0),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8, 0, 8, 12),
                        child: Text(
                          listOfFoodItems.value![index].title ?? '',
                          textAlign: TextAlign.center,
                          style: kFoodNameFontStyle,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              staggeredTileBuilder: (index) => const StaggeredTile.fit(1),
              mainAxisSpacing: 12,
              crossAxisSpacing: 16,
            ),
          ),
        ),
      ],
    );
  }
}
