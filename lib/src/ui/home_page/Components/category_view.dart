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
  const CategoryHorizontalView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ValueNotifier<RandomRecipe?> _listOfGoodItems = useState(List.empty());

    useEffect(() {
      ref.read(homeProvider.notifier).getRandomSweetsRecipe().then((value) {
        _listOfGoodItems.value = value;
      });
    });

    return LoadingScreen(
      data: _listOfGoodItems.value,
      child: SizedBox(
        height: 200,
        child: ListView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: 20,
          itemBuilder: (context, index) => GestureDetector(
            child: (_listOfGoodItems.value[index].image != null &&
                    randomFood[index].title != null)
                ? Column(
                    children: [
                      Container(
                        width: 160,
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: ClipRRect(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(16.0),
                          ),
                          child: Image.network(
                            randomFood[index].image!,
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                      ),
                      Container(
                        width: 160,
                        alignment: Alignment.center,
                        child: Text(
                          randomFood[index].title!,
                          textAlign: TextAlign.center,
                          style: kFoodNameFontStyle,
                        ),
                      ),
                    ],
                  )
                : const Center(
                    child: CircularProgressIndicator(),
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
