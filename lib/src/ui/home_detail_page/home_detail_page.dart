import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:food_stuff/src/data/model/recipe_information/res_recipe_info.dart';
import 'package:food_stuff/src/ui/home_detail_page/Components/food_intro.dart';
import 'package:food_stuff/src/ui/home_detail_page/Components/ingredients_table.dart';
import 'package:food_stuff/src/ui/home_detail_page/Components/instructions.dart';
import 'package:food_stuff/src/ui/home_detail_page/home_detail_viewmodel.dart';
import 'package:food_stuff/src/ui/widgets/loading_screen.dart';
import 'package:food_stuff/src/utils/constants.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_html/flutter_html.dart';
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
          .getRecipeInformation()
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
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              FoodIntro(
                foodTitle: _details.value?.title ?? "",
                servingsTitle: _details.value?.servings.toString() ?? "",
                healthScoreTitle: _details.value?.healthScore.toString() ?? "",
                scoreTitle:
                    _details.value?.weightWatcherSmartPoints.toString() ?? "",
                foodImage: _details.value?.image ?? "",
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Html(data: _details.value?.summary ?? ""),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(ingredients, style: kSubtitleFontStyle),
              ),
              IngredientsTable(
                ingredientList: _details.value?.extendedIngredients ?? [],
              ),

              const Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
                child: Text(
                  preparation,
                  style: kSubtitleFontStyle,
                ),
              ),
              // Instructions(
              //   instructionList: _details
              //     .value?.analyzedInstructions[id ?? 0] ?? const AnalysedInstructions(name: '', steps: []),
              // ),
              const SizedBox(
                height: 16,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                child: Text(
                  similarRecipies,
                  style: kSubtitleFontStyle,
                ),
              ),
              // const CategoryHorizontalView(),
            ],
          ),
        ),
      )),
    );
  }
}
