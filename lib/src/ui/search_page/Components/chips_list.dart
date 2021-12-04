import 'package:flutter/material.dart';
import 'package:food_stuff/src/utils/constants.dart';

class ChipsList extends StatefulWidget {
  ChipsList({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<ChipsList> createState() => _ChipsListState();
}

class _ChipsListState extends State<ChipsList> {
  var tags = [
    "love",
    "instagood",
    "photooftheday",
    "beautiful",
    "fashion",
    "happy",
    "tbt",
    "cute",
    "followme",
    "like4like",
    "follow",
    "picoftheday",
    "me",
    "selfie",
    "summer",
    "instadaily"
  ];

  @override
  Widget build(BuildContext context) {
    int? _value = 1;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title,
          style: kSubtitleFontStyle,
        ),
        const SizedBox(
          height: 8,
        ),
        Wrap(
          children: List<Widget>.generate(
            tags.length,
            (int index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4.0),
                child: ChoiceChip(
                  label: Text(tags[index]),
                  selected: _value == index,
                  onSelected: (bool selected) {
                    setState(() {
                      _value = selected ? index : null;
                    });
                  },
                ),
              );
            },
          ).toList(),
        ),
      ],
    );
  }
}
