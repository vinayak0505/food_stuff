import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_stuff/src/ui/home_detail_page/Components/ingredients_table.dart';
import 'package:food_stuff/src/ui/home_detail_page/Components/instructions.dart';
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
        actions: [
          IconButton(
            icon: const Icon(Icons.share),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.favorite_border),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  title,
                  style: kTitleFontsStyle,
                ),
              ),
              SizedBox(
                height: 350,
                width: kScreenWidth(context),
                child: Image.network(
                  image,
                  fit: BoxFit.fitWidth,
                ),
              ),
              const IngredientsTable(),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
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
          ),
        ),
      ),
    );
  }
}
