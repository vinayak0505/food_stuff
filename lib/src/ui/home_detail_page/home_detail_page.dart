import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:food_stuff/src/data/model/recipe_information/res_recipe_info.dart';
import 'package:food_stuff/src/ui/home_detail_page/Components/food_intro.dart';
import 'package:food_stuff/src/ui/home_detail_page/Components/ingredients_table.dart';
import 'package:food_stuff/src/ui/home_detail_page/home_detail_viewmodel.dart';
import 'package:food_stuff/src/ui/home_page/Components/category_view.dart';
import 'package:food_stuff/src/utils/constants.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:food_stuff/src/utils/strings.dart';

class HomeDetailPage extends HookConsumerWidget {
  const HomeDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ValueNotifier<ResRecipeInfo?> _details = useState(null);

    useEffect(() {
      ref
          .read(homeDetailProvider.notifier)
          .getRecipeInformation()
          .then((value) {
        _details.value = value;
      });
    }, []);

    return SafeArea(
      child: Scaffold(
        body: (_details.value != null)
            ? SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.arrow_back),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    FoodIntro(
                      foodTitle: _details.value?.title ?? "",
                      servingsTitle: _details.value?.servings.toString() ?? "",
                      healthScoreTitle:
                          _details.value?.healthScore.toString() ?? "",
                      scoreTitle:
                          _details.value?.weightWatcherSmartPoints.toString() ??
                              "",
                      isVegetarian: _details.value?.vegetarian ?? false,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text(ingredients, style: kSubtitleFontStyle),
                    ),
                    IngredientsTable(
                      ingredientList: _details.value!.extendedIngredients,
                    ),

                    /// to be change
                    const Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
                      child: Text(
                        preparation,
                        style: kSubtitleFontStyle,
                      ),
                    ),
                    // Instructions(),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Html(data: _details.value?.summary ?? ""),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                      child: Text(
                        similarRecipies,
                        style: kSubtitleFontStyle,
                      ),
                    ),
                    const CategoryHorizontalView(),
                  ],
                ),
              )
            : const Center(
                child: CircularProgressIndicator(),
              ),
      ),
    );
  }
}
