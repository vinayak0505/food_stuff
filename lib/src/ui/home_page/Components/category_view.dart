import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:food_stuff/src/data/model/random_recipe/random_recipe.dart';
import 'package:food_stuff/src/ui/home_page/home_viewmodel.dart';
import 'package:food_stuff/src/ui/widgets/loading_screen.dart';
import 'package:food_stuff/src/utils/constants.dart';
import 'package:food_stuff/src/utils/routes.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CategoryHorizontalView extends HookConsumerWidget {
  const CategoryHorizontalView({required this.tag, Key? key}) : super(key: key);
  final String tag;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ValueNotifier<List<Recipe>> _listOfGoodItems = useState(List.empty());

    useEffect(() {
      ref.read(homeProvider.notifier).getRandomRecipe(tag: tag).then((value) {
        _listOfGoodItems.value = value.recipes;
      });
    }, []);

    return LoadingScreen(
      data: _listOfGoodItems.value,
      child: SizedBox(
        height: 140,
        child: ListView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: _listOfGoodItems.value.length,
          itemBuilder: (context, index) => GestureDetector(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 160,
                  height: 100,
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(16.0)),
                    child: Image.network(
                        _listOfGoodItems.value[index].image ?? "",
                        errorBuilder: (context, error, stackTrace) =>
                            const Center(child: Icon(Icons.error)),
                        fit: BoxFit.fill),
                  ),
                ),
                const SizedBox(height: 4),
                SizedBox(
                  width: 140,
                  child: Text(
                    _listOfGoodItems.value[index].title ?? "",
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    style: kFoodNameFontStyle,
                  ),
                ),
              ],
            ),
            onTap: () {
              Navigator.pushNamed(context, MyRoutes.homeDetailRoute);
            },
          ),
        ),
      ),
    );
  }
}
