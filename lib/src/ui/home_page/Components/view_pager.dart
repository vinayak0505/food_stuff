import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_stuff/src/utils/constants.dart';

class ViewPager extends StatelessWidget {
  const ViewPager({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String image = 'https://en.pimg.jp/062/142/310/1/62142310.jpg';
    String foodTitle = 'Buko Pie (Filipino young Pie)';
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: SizedBox(
        width: kScreenWidth(context),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
              child: Image.network(
                image,
                fit: BoxFit.scaleDown,
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                foodTitle,
                style: kTitleFontsStyle,
              ),
              decoration: const BoxDecoration(
                color: Colors.lightBlue,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
