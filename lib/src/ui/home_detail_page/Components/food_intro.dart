import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_stuff/src/utils/constants.dart';
import 'package:food_stuff/src/utils/strings.dart';

class FoodIntro extends StatelessWidget {
  const FoodIntro({
    Key? key,
    required this.foodTitle,
    required this.servingsTitle,
    required this.healthScoreTitle,
    required this.scoreTitle,
    required this.isVegetarian,
  }) : super(key: key);

  final String foodTitle;
  final String servingsTitle;
  final String healthScoreTitle;
  final String scoreTitle;
  final bool isVegetarian;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Stack(
        fit: StackFit.loose,
        clipBehavior: Clip.hardEdge,
        children: [
          Container(
            width: kScreenWidth(context),
            alignment: Alignment.topLeft,
            child: Text(
              foodTitle,
              style: kTitleFontsStyle,
            ),
          ),
          Container(
            width: kScreenWidth(context) / 2 - 20,
            margin: const EdgeInsets.only(top: 150),
            alignment: Alignment.centerLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Row(
                    children: [
                      const Icon(Icons.fastfood),
                      const SizedBox(width: 8),
                      Text('$servings $servingsTitle'),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Row(
                    children: [
                      const Icon(Icons.health_and_safety),
                      const SizedBox(width: 8),
                      Text('$healthScore $healthScoreTitle'),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Row(
                    children: [
                      const Icon(Icons.score),
                      const SizedBox(width: 8),
                      Flexible(
                          child: Text('$weightWatcherSmartPoints $scoreTitle')),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 50, top: 130),
            alignment: Alignment.bottomRight,
            child: Column(
              children: [
                SizedBox(
                  width: kImageSize,
                  height: kImageSize,
                  child: ClipRRect(
                    borderRadius:
                        BorderRadius.circular(kRoundedRectangleRadius),
                    child: Image.network(
                      image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: 25,
                  height: 25,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    color: Colors.white,
                  ),
                  alignment: Alignment.center,
                  child: Container(
                    alignment: Alignment.center,
                    width: 15,
                    height: 15,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.green,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
