import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:food_stuff/src/utils/constants.dart';
import 'package:food_stuff/src/utils/routes.dart';

class MoreFoodItems extends StatelessWidget {
  const MoreFoodItems({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: StaggeredGridView.countBuilder(
        physics: const ScrollPhysics(),
        shrinkWrap: true,
        crossAxisCount: 4,
        itemCount: 8,
        itemBuilder: (BuildContext context, int index) => Column(
          children: [
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage("https://i.imgur.com/EVTkpZL.jpg"),
                      fit: BoxFit.fitWidth),
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
        staggeredTileBuilder: (int index) =>
            StaggeredTile.count(2, index.isEven ? 2 : 1),
        mainAxisSpacing: 4.0,
        crossAxisSpacing: 4.0,
      ),
    );
  }
}

class CategoryHorizontalView extends StatelessWidget {
  const CategoryHorizontalView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String image = 'https://en.pimg.jp/062/142/310/1/62142310.jpg';
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
