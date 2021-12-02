import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:food_stuff/src/utils/constants.dart';

class MoreFoodItems extends StatefulWidget {
  const MoreFoodItems({Key? key}) : super(key: key);

  @override
  _MoreFoodItemsState createState() => _MoreFoodItemsState();
}

class _MoreFoodItemsState extends State<MoreFoodItems> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: StaggeredGridView.countBuilder(
        crossAxisCount: 4,
        itemCount: 8,
        itemBuilder: (BuildContext context, int index) => Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage("https://i.imgur.com/EVTkpZL.jpg"),
                    fit: BoxFit.cover))),
        staggeredTileBuilder: (int index) =>
            StaggeredTile.count(2, index.isEven ? 2 : 1),
        mainAxisSpacing: 4.0,
        crossAxisSpacing: 4.0,
      ),
    );
  }
}

class CategoryHorizontalView extends StatelessWidget {
  const CategoryHorizontalView({Key? key, required this.subtitle})
      : super(key: key);
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    String image = 'https://en.pimg.jp/062/142/310/1/62142310.jpg';
    return Column(
      children: [
        Text(subtitle),
        ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: 20,
          itemBuilder: (context, index) => GestureDetector(
            child: Container(
              height: 100.0,
              width: 100.0,
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
          ),
        ),
      ],
    );
  }
}
