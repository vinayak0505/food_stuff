import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_stuff/src/data/model/ingredient_model.dart';
import 'package:food_stuff/src/data/model/recipe_information/res_recipe_info.dart';

class IngredientsTable extends StatefulWidget {
  const IngredientsTable({Key? key, required this.ingredientList})
      : super(key: key);

  final List<ExtendedIngredient> ingredientList;

  @override
  _IngredientsTableState createState() => _IngredientsTableState();
}

class _IngredientsTableState extends State<IngredientsTable> {
  late List<Ingredient> myIngredientList;

  late List<Widget> ingredientListWidget;

  Widget customStyleIngredients(Ingredient index) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
          child: Container(
            height: 8,
            width: 8,
            decoration: const BoxDecoration(
              color: Colors.orange,
              shape: BoxShape.circle,
            ),
          ),
        ),
        const SizedBox(
          width: 4,
        ),
        Text('${index.measure} ${index.unit} ${index.name}')
      ],
    );
  }

  Ingredient ingredientsData(ExtendedIngredient index) {
    return Ingredient(index.name, index.amount.toString(), index.unit);
  }

  @override
  void initState() {
    myIngredientList =
        widget.ingredientList.map((e) => ingredientsData(e)).toList();

    ingredientListWidget =
        myIngredientList.map((e) => customStyleIngredients(e)).toList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SizedBox(
        height: 100,
        child: Wrap(
          spacing: 5,
          direction: Axis.vertical,
          children: ingredientListWidget,
        ),
      ),
    );
  }
}
