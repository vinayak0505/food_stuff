import 'package:flutter/material.dart';

class CategoryHorizontalView extends StatelessWidget {
  const CategoryHorizontalView({Key? key, required this.subtitle}) : super(key: key);
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    String image = 'https://en.pimg.jp/062/142/310/1/62142310.jpg';
    return SizedBox(
    height = 200,
      child: Column(
        children: [
          Text(subtitle),
          ListView.builder(
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
                    fit: BoxFit.scaleDown,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
