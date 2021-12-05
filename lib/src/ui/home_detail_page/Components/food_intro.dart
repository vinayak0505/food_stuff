import 'package:flutter/material.dart';
import 'package:food_stuff/src/ui/home_detail_page/Components/custom_clipper.dart';
import 'package:food_stuff/src/utils/constants.dart';
import 'package:food_stuff/src/utils/strings.dart';

class FoodIntro extends StatelessWidget {
  const FoodIntro({Key? key, required this.foodTitle}) : super(key: key);

  final String foodTitle;

  @override
  Widget build(BuildContext context) {
    return Stack(
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
          margin: const EdgeInsets.only(top: 150),
          alignment: Alignment.centerLeft,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  children: const [
                    Icon(Icons.fastfood),
                    Text(servings),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  children: const [
                    Icon(Icons.fastfood),
                    Text(servings),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  children: const [
                    Icon(Icons.fastfood),
                    Text(servings),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 50, top: 130),
          alignment: Alignment.bottomRight,
          child: SizedBox(
            width: kImageSize,
            height: kImageSize,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(kRoundedRectangleRadius),
              child: Image.network(
                image,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
