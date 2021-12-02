import 'package:flutter/material.dart';
import 'package:food_stuff/src/utils/constants.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: TextFormField(
        keyboardType: TextInputType.text,
        decoration: kTextFieldDecoration.copyWith(
          hintText: 'Search for Recipes',
          prefixIcon: const Icon(Icons.search),
        ),
      ),
    );
  }
}
