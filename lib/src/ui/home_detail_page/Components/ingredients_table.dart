import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_stuff/src/data/model/ingredient_model.dart';

class IngredientsTable extends StatefulWidget {
  const IngredientsTable({Key? key}) : super(key: key);
  @override
  _IngredientsTableState createState() => _IngredientsTableState();
}

class _IngredientsTableState extends State<IngredientsTable> {
  List<Ingredient> ingredientList = [
    Ingredient('mini candy cane', '25'),
    Ingredient('choco chips', '4 cups'),
    Ingredient('peppermint extract', '1/2 teaspoon'),
    Ingredient('white chocolate chip', '3 cups'),
  ];
  late List<Widget> ingredientListWidget;

  Widget customStyleIngredients(Ingredient index) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 8),
          child: Container(
            height: 8,
            width: 8,
            decoration: const BoxDecoration(
              color: Colors.orange,
              shape: BoxShape.circle,
            ),
          ),
        ),
        SizedBox(
          width: 4,
        ),
        Text('${index.measure} ${index.name}')
      ],
    );
  }

  @override
  void initState() {
    ingredientListWidget =
        ingredientList.map((e) => customStyleIngredients(e)).toList();
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
