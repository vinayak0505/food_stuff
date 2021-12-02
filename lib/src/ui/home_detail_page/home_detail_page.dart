import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_stuff/src/utils/constants.dart';

class HomeDetailPage extends StatelessWidget {
  const HomeDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String image = 'https://en.pimg.jp/062/142/310/1/62142310.jpg';

    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              SizedBox(
                height: 300,
                width: kScreenWidth(context),
                child: Image.network(
                  image,
                  fit: BoxFit.contain,
                ),
              ),
              const CircleAvatar(
                child: Icon(
                  CupertinoIcons.heart,
                ),
              )
            ],
          ),
          Row(
            children: [
              // TabController(),
              // Cntainer(
              //   padding: const EdgeInsets.all(1.0),
              //   height: 60,
              //   width: kScreenWidth(context),
              //   decoration: const BoxDecoration(
              //     color: Colors.white,
              //     borderRadius: BorderRadius.all(
              //       Radius.circular(20),
              //     ),
              //   ),
              // )
            ],
          )
        ],
      ),
    );
  }
}
