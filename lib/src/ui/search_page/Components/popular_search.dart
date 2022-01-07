import 'package:flutter/material.dart';
import 'package:food_stuff/src/ui/search_result_page/search_result_page.dart';
import 'package:food_stuff/src/utils/constants.dart';

class PopularSearch extends StatelessWidget {
  const PopularSearch({
    Key? key,
    this.crossAxisCount = 2,
    required this.context}
    ) : super(key: key);

  final BuildContext context;
  final int crossAxisCount;

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      physics: const ScrollPhysics(),
      crossAxisCount: crossAxisCount,
      childAspectRatio: ((kScreenWidth(context) / 1.5) / 100),
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      children: popularSearchList.map((String value) {
        return Container(
          margin: const EdgeInsets.all(5.0),
          child: Material(
            color: Theme.of(context).canvasColor,
            borderRadius: const BorderRadius.all(
              Radius.circular(kRoundedRectangleRadius),
            ),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return SearchResultPage(userSearch: value);
                  }));
              },
              child: Center(
                child: Text(value)),
            ),
          ),
        );
      }).toList(),
    );
  }
}
