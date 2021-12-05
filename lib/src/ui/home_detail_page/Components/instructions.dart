import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_stuff/src/utils/constants.dart';

class Instructions extends StatelessWidget {
  const Instructions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> stepList = [
      'Preheat oven to 180⁰ C. Line the muffin /cupcake tray with paper cups.',
      'Sieve together maida, cocoa powder, and baking powder. Keep aside.',
      'Soften butter in a bowl, add powdered sugar and beat well to a creamy consistency. Add vanilla essence and mix. Slowly beat in the eggs one by one, then fold in the sieved maida mixture and mix well. Add milk and mix to get a dropping consistency. Mix in the red colour and blend well.',
      'Pour the batter into the paper cups filling ¾ of the cup and bake in the preheated oven for 15-20 minutes or till tooth pick inserted in the center of the cake comes out clean',
      'Remove from oven, cool for a while. Pipe the topping over the cakes and decorate.',
      'Topping: Strain the dahi in a muslin cloth for 20 minutes to get hung curd. Place the hung curd, NESTLÉ MILKMAID Sweetened Condensed Milk and butter in a bowl and beat together till thick. Spoon into an icing bag and pipe over the cool cakes.'
    ];

    Widget _instructionStep(String step) {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 8),
            child: Container(
              height: 8,
              width: 8,
              decoration: const BoxDecoration(
                color: Colors.orange,
                shape: BoxShape.circle,
              ),
            ),
          ),
          const SizedBox(
            width: 4,
          ),
          Flexible(
            child: Text(
              step,
            ),
          ),
        ],
      );
    }

    return ListView.separated(
      physics: const ScrollPhysics(),
      shrinkWrap: true,
      itemCount: stepList.length,
      itemBuilder: (context, index) => _instructionStep(stepList[index]),
      separatorBuilder: (context, index) {
        return const Divider();
      },
    );
  }
}
