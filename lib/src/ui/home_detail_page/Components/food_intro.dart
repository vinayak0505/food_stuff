import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:food_stuff/src/ui/widgets/image.dart';
import 'package:food_stuff/src/ui/widgets/responsive.dart';
import 'package:food_stuff/src/utils/constants.dart';
import 'package:food_stuff/src/utils/strings.dart';

class FoodIntro extends StatelessWidget {
  const FoodIntro(
      {required BuildContext context,
      required this.servingsTitle,
      required this.healthScoreTitle,
      required this.cookingTime,
      required this.heading,
      required this.imageUrl,
      required this.foodInfo,
      Key? key})
      : super(key: key);

  final String servingsTitle;
  final String healthScoreTitle;
  final String cookingTime;
  final String heading;
  final String imageUrl;
  final String foodInfo;

  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(children: [
          _foodTitle(heading),
          const SizedBox(height: 16),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            Expanded(child: _foodImage(imageUrl)),
            Flexible(
              child: _foodColumn(
                  servingsTitle: servingsTitle,
                  healthScoreTitle: healthScoreTitle,
                  cookingTime: cookingTime),
            ),
          ]),
          _foodDescription(foodInfo)
        ]),
      ),
      desktop: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          _foodTitle(heading),
          const SizedBox(height: 24),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            Expanded(child: _foodImage(imageUrl)),
            Expanded(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _foodColumn(
                        servingsTitle: servingsTitle,
                        healthScoreTitle: healthScoreTitle,
                        cookingTime: cookingTime),
                    const SizedBox(height: 8),
                    _foodDescription(foodInfo)
                  ]),
            ),
          ]),
        ]),
      ),
    );
  }
}

Widget _foodDescription(String description) {
  return Html(data: description);
}

Widget _foodImage(String image) {
  return ClipRRect(
    borderRadius: BorderRadius.circular(kRoundedRectangleRadius),
    child: Container(
      constraints: const BoxConstraints(
        minWidth: 100,
        maxWidth: 600,
      ),
      child: CustomImage(imageUrl: image, fit: BoxFit.scaleDown),
    ),
  );
}

Widget _foodTitle(String title) {
  return Responsive(
      mobile: Text(title, style: kTitleFontsStyle),
      tablet: Text(title,
          textAlign: TextAlign.start, style: kTabletTitleFontsStyle),
      desktop: Text(title,
          textAlign: TextAlign.start, style: kDesktopTitleFontsStyle));
}

Widget _foodColumn({
  required String servingsTitle,
  required String healthScoreTitle,
  required String cookingTime,
}) {
  return Padding(
    padding: const EdgeInsets.all(4.0),
    child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Row(children: [
          const Icon(Icons.fastfood),
          const SizedBox(width: 8),
          Text('$servings $servingsTitle'),
        ]),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Row(children: [
          const Icon(Icons.health_and_safety),
          const SizedBox(width: 8),
          Text('$healthScore $healthScoreTitle'),
        ]),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Row(children: [
          const Icon(Icons.score),
          const SizedBox(width: 8),
          Text('$timeForCooking $cookingTime min'),
        ]),
      ),
    ]),
  );
}
