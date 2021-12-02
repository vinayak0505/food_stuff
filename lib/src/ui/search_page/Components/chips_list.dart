import 'package:flutter/material.dart';

class ChipsList extends StatelessWidget {
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

  var selectedTags = ["love", "me", "summer"];

  generate_tags() {
    return tags.map((tag) => get_chip(tag)).toList();
  }

  get_chip(name) {
    return FilterChip(
      selected: selectedTags.contains(name),
      selectedColor: Colors.blue.shade800,
      disabledColor: Colors.blue.shade400,
      labelStyle:
          const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      label: Text("#$name"),
      onSelected: (bool value) {},
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title),
        Wrap(
          spacing: 8.0, // gap between adjacent chips
          runSpacing: 4.0, // gap between lines
          children: <Widget>[...generate_tags()],
        ),
      ],
    );
  }
}
