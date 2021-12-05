import 'package:flutter/material.dart';
import 'package:food_stuff/src/utils/constants.dart';
import 'package:food_stuff/src/utils/routes.dart';

class CategoryHorizontalView extends StatelessWidget {
  const CategoryHorizontalView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 20,
        itemBuilder: (context, index) => GestureDetector(
          child: Column(
            children: [
              Container(
                width: 160,
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(16.0),
                  ),
                  child: Image.network(
                    image,
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
              const Center(
                child: Text(
                  'Food very tasty',
                  style: kFoodNameFontStyle,
                ),
              ),
            ],
          ),
          onTap: () {
            Navigator.pushNamed(context, MyRoutes.homeDetailRoute);
          },
        ),
      ),
    );
  }
}
