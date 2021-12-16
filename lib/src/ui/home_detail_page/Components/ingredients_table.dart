import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_stuff/src/data/model/ingredient_model.dart';
import 'package:food_stuff/src/data/model/recipe_information/res_recipe_info.dart';
import 'package:food_stuff/src/utils/constants.dart';

class IngredientsTable extends StatefulWidget {
  const IngredientsTable({Key? key, required this.ingredientList})
      : super(key: key);

  final List<ExtendedIngredient> ingredientList;

  @override
  _IngredientsTableState createState() => _IngredientsTableState();
}

class _IngredientsTableState extends State<IngredientsTable> {
  late List<Ingredient> myIngredientList;

  Ingredient ingredientsData(ExtendedIngredient index) {
    return Ingredient(
        index.name ?? '', index.amount.toString(), index.unit ?? '');
  }

  @override
  void initState() {
    myIngredientList =
        widget.ingredientList.map((e) => ingredientsData(e)).toList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      physics: const ScrollPhysics(),
      shrinkWrap: true,
      childAspectRatio: ((kScreenWidth(context) / 1) / 100),
      crossAxisCount: 2,
      children: List.generate(myIngredientList.length ~/ 2, (index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Row(
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
              const SizedBox(width: 3),
              Flexible(
                child: Text(
                    '${myIngredientList[index].measure} ${myIngredientList[index].unit} ${myIngredientList[index].name}'),
              ),
            ],
          ),
        );
      }),
    );
  }
}
