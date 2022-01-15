import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:food_stuff/src/data/model/recipe_information/res_recipe_info.dart';
import 'package:food_stuff/src/ui/home_detail_page/Components/food_intro.dart';
import 'package:food_stuff/src/ui/home_detail_page/Components/ingredients_table.dart';
import 'package:food_stuff/src/ui/home_detail_page/Components/instructions.dart';
import 'package:food_stuff/src/ui/home_detail_page/home_detail_viewmodel.dart';
import 'package:food_stuff/src/ui/home_page/Components/category_horizontal_view.dart';
import 'package:food_stuff/src/ui/widgets/loading_screen.dart';
import 'package:food_stuff/src/utils/constants.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:food_stuff/src/utils/strings.dart';

class HomeDetailPage extends HookConsumerWidget {
  const HomeDetailPage({required this.id, Key? key}) : super(key: key);

  final int id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ValueNotifier<ResRecipeInfo?> _details = useState(null);

    useEffect(() {
      ref
          .read(homeDetailProvider.notifier)
          .getRecipeInformation(id: id)
          .then((value) {
        _details.value = value;
      });
    }, []);

    return SafeArea(
        child: Scaffold(
            body: LoadingScreen(
                data: _details.value,
                child: SingleChildScrollView(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        IconButton(
                            icon: const Icon(Icons.arrow_back),
                            onPressed: () => Navigator.pop(context)),
                        FoodIntro(
                            context: context,
                            foodInfo: _details.value?.summary ?? "",
                            imageUrl: _details.value?.image ?? "",
                            heading: _details.value?.title ?? "",
                            servingsTitle:
                                _details.value?.servings.toString() ?? "",
                            healthScoreTitle:
                                _details.value?.healthScore.toString() ?? "",
                            cookingTime:
                                _details.value?.readyInMinutes.toString() ??
                                    ""),
                        const SizedBox(height: 16),
                        const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16.0),
                            child:
                                Text(ingredients, style: kSubtitleFontStyle)),
                        Padding(
                            padding:
                                const EdgeInsets.only(left: 12.0, right: 6),
                            child: IngredientsTable(
                              ingredientList:
                                  _details.value?.extendedIngredients ?? [],
                            )),
                        const SizedBox(height: 16),
                        const Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 8.0, horizontal: 16),
                            child: Text(
                              preparation,
                              style: kSubtitleFontStyle,
                            )),
                        const SizedBox(height: 16),
                        Instructions(
                            instructionList:
                                _details.value?.analyzedInstructions[0] ??
                                    const AnalysedInstructions(
                                        name: '', steps: [])),
                        const SizedBox(height: 16),
                        const Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 8.0, horizontal: 16.0),
                            child: Text(
                              similarRecipies,
                              style: kSubtitleFontStyle,
                            )),
                        if (_details.value != null)
                          CategoryHorizontalView(
                              tag: _details.value!.diets
                                  .map((i) => i.toString())
                                  .join(",")),
                        const SizedBox(height: 18)
                      ]),
                ))));
  }
}
