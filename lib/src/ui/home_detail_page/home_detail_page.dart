import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_stuff/src/ui/home_detail_page/Components/custom_clipper.dart';
import 'package:food_stuff/src/ui/home_detail_page/Components/ingredients_table.dart';
import 'package:food_stuff/src/ui/home_detail_page/Components/instructions.dart';
import 'package:food_stuff/src/ui/home_page/Components/categoryl_view.dart';
import 'package:food_stuff/src/ui/home_page/Components/more_food_items.dart';
import 'package:food_stuff/src/utils/constants.dart';

class HomeDetailPage extends StatelessWidget {
  const HomeDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String image = 'https://en.pimg.jp/062/142/310/1/62142310.jpg';
    String title = 'Peppermint Bark';

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        // actions: [
        //   IconButton(
        //     icon: const Icon(Icons.share),
        //     onPressed: () {},
        //   ),
        //   IconButton(
        //     icon: const Icon(Icons.favorite_border),
        //     onPressed: () {},
        //   ),
        // ],
      ),
      body: SingleChildScrollView(
        child: Stack(
          alignment: AlignmentDirectional.topStart,
          fit: StackFit.loose,
          clipBehavior: Clip.hardEdge,
          children: [
            Container(
              width: kScreenWidth(context) / 1.5,
              padding: const EdgeInsets.all(16.0),
              child: Text(
                title,
                style: kTitleFontsStyle,
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: ClipPath(
                clipper: MyCustomClipper(),
                child: ClipOval(
                  child: Container(
                    width: 200,
                    height: 200,
                    child: Image.network(
                      image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            Column(
              children: [
                const IngredientsTable(),
                const Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                  child: Text(
                    'Trending',
                    style: kSubtitleFontStyle,
                  ),
                ),
                const CategoryHorizontalView(),
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'Preparation',
                    style: kTitleFontsStyle,
                  ),
                ),
                Instructions(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
