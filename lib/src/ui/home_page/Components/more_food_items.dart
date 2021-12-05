import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:food_stuff/src/utils/constants.dart';

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
