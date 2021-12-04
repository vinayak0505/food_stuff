import 'package:flutter/material.dart';
import 'package:food_stuff/src/ui/widgets/theme.dart';
import 'package:food_stuff/src/utils/constants.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
    required this.readOnly,
    required this.autofocus,
    required this.onClick,
  }) : super(key: key);
  final bool readOnly, autofocus;

  final void Function() onClick;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: TextFormField(
        onTap: onClick,
        autofocus: autofocus,
        readOnly: readOnly,
        keyboardType: TextInputType.text,
        decoration: kTextFieldDecoration.copyWith(
          fillColor: Theme.of(context).canvasColor,
          hintText: 'Search for Recipes',
          prefixIcon: const Icon(Icons.search),
        ),
      ),
    );
  }
}
