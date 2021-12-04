import 'package:flutter/material.dart';
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

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          ListView.separated(
            itemCount: ingredientList.length,
            itemBuilder: itemBuilder,
            shrinkWrap: true,
            physics: const ScrollPhysics(),
            separatorBuilder: (c,i) => const Divider(),
          ),
        ],
      ),
    );
  }

  Widget itemBuilder(BuildContext context, int index) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(ingredientList[index].name),
          Text(ingredientList[index].measure),
        ],
      ),
    );
  }
}
