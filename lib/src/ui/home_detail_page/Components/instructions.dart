import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:food_stuff/src/data/model/recipe_information/res_recipe_info.dart';

class Instructions extends HookWidget {
  const Instructions({required this.instructionList, Key? key})
      : super(key: key);

  final AnalysedInstructions instructionList;

  @override
  Widget build(BuildContext context) {
    // List<String> stepList = [
    //   'Preheat oven to 180⁰ C. Line the muffin /cupcake tray with paper cups.',
    //   'Sieve together maida, cocoa powder, and baking powder. Keep aside.',
    //   'Soften butter in a bowl, add powdered sugar and beat well to a creamy consistency. Add vanilla essence and mix. Slowly beat in the eggs one by one, then fold in the sieved maida mixture and mix well. Add milk and mix to get a dropping consistency. Mix in the red colour and blend well.',
    //   'Pour the batter into the paper cups filling ¾ of the cup and bake in the preheated oven for 15-20 minutes or till tooth pick inserted in the center of the cake comes out clean',
    //   'Remove from oven, cool for a while. Pipe the topping over the cakes and decorate.',
    //   'Topping: Strain the dahi in a muslin cloth for 20 minutes to get hung curd. Place the hung curd, NESTLÉ MILKMAID Sweetened Condensed Milk and butter in a bowl and beat together till thick. Spoon into an icing bag and pipe over the cool cakes.'
    // ];

    return ListView.separated(
      physics: const ScrollPhysics(),
      shrinkWrap: true,
      itemCount:instructionList.steps.length,
      itemBuilder: (context, index) => _instructionStep(instructionList, index),
      separatorBuilder: (context, index) {
        return const Divider();
      },
    );
  }

  Widget _instructionStep(AnalysedInstructions step, int index) {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
            child: Text(step.steps[index].number.toString()),
          ),
          const SizedBox(
            width: 4,
          ),
          Flexible(
            child: Text(
              step.steps[index].step,
            ),
          ),
        ],
      );
    }
}
