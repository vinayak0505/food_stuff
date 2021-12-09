import 'package:flutter/material.dart';
import 'package:food_stuff/src/ui/search_result_page/search_result_page.dart';
import 'package:food_stuff/src/utils/constants.dart';

class PopularSearch extends StatelessWidget {
  const PopularSearch({
    Key? key,
    required this.context,
  }) : super(key: key);

  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    final List<String> popularSearchList = [
      'breakfast',
      'lunch',
      'dinner',
      'chicken',
      'dessert',
      'christmas'
    ];
    return GridView.count(
      physics: const ScrollPhysics(),
      crossAxisCount: 2,
      childAspectRatio: ((kScreenWidth(context) / 1.5) / 100),
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      children: popularSearchList.map((String value) {
        return InkWell(
          onTap: () {
            Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return SearchResultPage(userSearch: value,);
                          }),
                        );
          },
          child: Container(
            decoration: BoxDecoration(
              color: Theme.of(context).canvasColor,
              borderRadius: const BorderRadius.all(
                Radius.circular(kRoundedRectangleRadius),
              ),
            ),
            margin: const EdgeInsets.all(5.0),
            child: Center(
              child: Text(value),
            ),
          ),
        );
      }).toList(),
    );
  }
}
