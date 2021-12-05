import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:food_stuff/src/data/model/recipe_information/res_recipe_info.dart';
import 'package:food_stuff/src/ui/home_detail_page/Components/food_intro.dart';
import 'package:food_stuff/src/ui/home_detail_page/Components/ingredients_table.dart';
import 'package:food_stuff/src/ui/home_detail_page/Components/instructions.dart';
import 'package:food_stuff/src/ui/home_detail_page/home_detail_viewmodel.dart';
import 'package:food_stuff/src/ui/home_page/Components/more_food_items.dart';
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

    String image = 'https://en.pimg.jp/062/142/310/1/62142310.jpg';
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              FoodIntro(),
              Text(ingredients, style: kSubtitleFontStyle),
              IngredientsTable(),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                child: Text(
                  _details.value?.title ?? "",
                  'Preparation',
                  style: kTitleFontsStyle,
                ),
              ),
              Instructions(),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                child: Text(
                  similarRecipies,
                  style: kSubtitleFontStyle,
                ),
              ),
              const CategoryHorizontalView(),
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Preparation',
                  style: kTitleFontsStyle,
                ),
              ),
              Instructions(),
              Html(data:_details.value?.summary??""),
              CategoryHorizontalView(),
            ],
          ),
        ),
      ),
    );
  }
}
