import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:food_stuff/src/data/model/random_recipe/random_recipe.dart';
import 'package:food_stuff/src/ui/home_detail_page/home_detail_page.dart';
import 'package:food_stuff/src/ui/widgets/image.dart';
import 'package:food_stuff/src/ui/widgets/loading_screen.dart';
import 'package:food_stuff/src/ui/widgets/responsive.dart';
import 'package:food_stuff/src/utils/constants.dart';
import 'package:food_stuff/src/utils/strings.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../home_viewmodel.dart';

class MoreFoodItems extends HookConsumerWidget {
  const MoreFoodItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isSwitched = useState(false);
    final ValueNotifier<List<Recipe>?> _listOfFoodItems = useState(null);

    useEffect(() {
      ref.read(homeProvider.notifier).getRandomRecipe().then((value) {
        _listOfFoodItems.value = value.recipes;
      });
    }, []);

    void onlyVegetarian(bool value) {
      if (isSwitched.value == value) return;
      isSwitched.value = value;
      _listOfFoodItems.value = null;
      ref.read(homeProvider.notifier).getRandomRecipe().then((value) {
        _listOfFoodItems.value = value.recipes;
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
        Responsive(
          mobile: _FoodItemsGrid(listOfFoodItems: _listOfFoodItems, crossAxisCount: 2), 
          tablet: _FoodItemsGrid(listOfFoodItems: _listOfFoodItems, crossAxisCount: 3),
          desktop: _FoodItemsGrid(listOfFoodItems: _listOfFoodItems, crossAxisCount: 4)),
      ],
    );
  }
}

class _FoodItemsGrid extends HookWidget {
  const _FoodItemsGrid({
    Key? key,
    required ValueNotifier<List<Recipe>?> listOfFoodItems, required this.crossAxisCount,
  })  : _listOfFoodItems = listOfFoodItems,
        super(key: key);

  final ValueNotifier<List<Recipe>?> _listOfFoodItems;
  final int crossAxisCount;
  


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: LoadingScreen(
        data: _listOfFoodItems.value,
        child: StaggeredGridView.countBuilder(
          scrollDirection: Axis.vertical,
          physics: const ScrollPhysics(),
          shrinkWrap: true,
          crossAxisCount: crossAxisCount,
          itemCount: _listOfFoodItems.value?.length,
          itemBuilder: (BuildContext context, int index) => InkWell(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(kRoundedRectangleRadius),
              child: AnimatedContainer(
                color: Theme.of(context).canvasColor,
                duration: const Duration(seconds: 1),
                curve: Curves.fastOutSlowIn,
                child: Column(
                  children: [
                    AspectRatio(
                      aspectRatio: 1.5, //todo: may be Not correct solution
                      child: CustomImage(
                        imageUrl: _listOfFoodItems.value?[index].image ?? '',
                        fit: BoxFit.fitWidth,needFrameBuilder: true,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(_listOfFoodItems.value![index].readyInMinutes
                                  .toString() + " "),
                          const Icon(Icons.alarm, size: 16.0),
                          const Spacer(),
                          Text(_listOfFoodItems.value![index].servings
                                  .toString() + " "),
                          const Icon(Icons.star, size: 16.0),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8, 0, 8, 12),
                      child: Text(
                        _listOfFoodItems.value![index].title ?? ' ',
                        textAlign: TextAlign.center,
                        style: kFoodNameFontStyle,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return HomeDetailPage(id: _listOfFoodItems.value![index].id );
                }));
            },
          ),
          staggeredTileBuilder: (index) => const StaggeredTile.fit(1),
          mainAxisSpacing: 12,
          crossAxisSpacing: 16,
        ),
      ),
    );
  }
}
