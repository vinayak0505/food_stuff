import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:food_stuff/src/utils/constants.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final userSearchProvider = StateProvider<String>((ref) {
  String userSearch = '';
  return userSearch;
});

class ChipsList extends HookConsumerWidget {
  ChipsList({Key? key, required this.title}) : super(key: key);
  final String title;
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
  Widget build(BuildContext context, WidgetRef ref) {
    final _value = useState<int?>(null);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
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
                  selected: _value.value == index,
                  onSelected: (bool selected) {
                    _value.value = selected ? index : null;
                    // userSearchProvider.state = tags[index];
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
