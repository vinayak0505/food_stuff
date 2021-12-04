import 'package:flutter/material.dart';

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
      return Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(step),
            const Divider(),
          ],
        ),
      );
    }

    return ListView.builder(
      physics: const ScrollPhysics(),
      shrinkWrap: true,
      itemCount: stepList.length,
      itemBuilder: (context, index) => _instructionStep(stepList[index]),
    );
  }
}
