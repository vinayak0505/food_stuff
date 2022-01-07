import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:food_stuff/src/ui/search_result_page/search_result_page.dart';
import 'package:food_stuff/src/utils/constants.dart';

class FestivalSpecial extends HookWidget {
  const FestivalSpecial({this.direction = true, Key? key})
      : super(key: key);
  final bool direction;
  @override
  Widget build(BuildContext context) {

    List<Widget> foodFestival = [
    Flexible(
            child: Material(
          clipBehavior: Clip.antiAlias,
          borderRadius: const BorderRadius.all(
            Radius.circular(kRoundedRectangleRadius)),
          child: InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const SearchResultPage(userSearch: 'christmas');
              }));
            },
            child: ClipRRect(
              clipBehavior: Clip.antiAlias,
              borderRadius: BorderRadius.circular(kRoundedRectangleRadius),
              child: Image.asset(
                'image/christmas.jpg', fit: BoxFit.fitWidth,
              ),
            ),
          ),
        )),
        if(!direction) const SizedBox(height: 16), 
        Flexible(
            child: Material(
          clipBehavior: Clip.antiAlias,
          borderRadius: const BorderRadius.all(
            Radius.circular(kRoundedRectangleRadius)),
          child: InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const SearchResultPage(userSearch: 'halloween');
              }));
            },
            child: ClipRRect(
              clipBehavior: Clip.antiAlias,
              borderRadius: BorderRadius.circular(kRoundedRectangleRadius),
              child: Image.asset('image/halloween.jpg', fit: BoxFit.fitWidth),
            ),
          ),
        )),
];

    return SizedBox(
      height: direction? 350 : 700,
      child: direction? Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: foodFestival) 
      : Column(
      children: foodFestival),
    );
  }
}


