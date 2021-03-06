import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:food_stuff/src/data/model/random_recipe/random_recipe.dart';
import 'package:food_stuff/src/ui/home_detail_page/home_detail_page.dart';
import 'package:food_stuff/src/ui/home_page/home_viewmodel.dart';
import 'package:food_stuff/src/ui/widgets/image.dart';
import 'package:food_stuff/src/ui/widgets/loading_screen.dart';
import 'package:food_stuff/src/ui/widgets/responsive.dart';
import 'package:food_stuff/src/utils/constants.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CategoryHorizontalView extends HookConsumerWidget {
  const CategoryHorizontalView({required this.tag, Key? key}) : super(key: key);
  final String tag;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ValueNotifier<List<Recipe>?> _listOfFoodItems = useState(null);

    useEffect(() {
      ref.read(homeProvider.notifier).getRandomRecipe(tag: tag).then((value) {
        _listOfFoodItems.value = value.recipes;
      });
    }, []);

    return LoadingScreen(
      data: _listOfFoodItems.value,
      child: SizedBox(
        height: kScreenWidth(context) / 5 + 40,
        child: ListView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: _listOfFoodItems.value?.length,
          itemBuilder: (context, index) => Responsive(
            mobile:
                _FoodItemGrid(listOfFoodItems: _listOfFoodItems, index: index, aspectRation: 5,),
                tablet:  _FoodItemGrid(listOfFoodItems: _listOfFoodItems, index: index,aspectRation: 6,),
            desktop:
                _FoodItemGrid(listOfFoodItems: _listOfFoodItems, index: index,aspectRation: 7,),
          ),
        ),
      ),
    );
  }
}

class _FoodItemGrid extends StatelessWidget {
  const _FoodItemGrid({
    Key? key,
    required ValueNotifier<List<Recipe>?> listOfFoodItems,
    required this.index, required this.aspectRation,
  })  : _listOfFoodItems = listOfFoodItems,
        super(key: key);

  final ValueNotifier<List<Recipe>?> _listOfFoodItems;
  final int index;
  final int aspectRation;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 1.5 * kScreenWidth(context) / aspectRation,
            height: kScreenWidth(context) / aspectRation,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(16.0)),
                child: CustomImage(imageUrl: _listOfFoodItems.value?[index].image ?? "",fit: BoxFit.fill,),
              ),
            ),
          ),
          const SizedBox(height: 4),
          SizedBox(
            width: 140,
            child: Text(
              _listOfFoodItems.value?[index].title ?? "",
              textAlign: TextAlign.center,
              maxLines: 2,
              style: kFoodNameFontStyle,
            ),
          ),
        ]),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) {
            return HomeDetailPage(
              id: _listOfFoodItems.value![index].id,
            );
          }));
      });
  }
}
