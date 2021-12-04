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

  List<DataRow> ingredientsRow() {
    // ingredientsRow().add(
    //   DataRow(
    //     cells: [
    //       DataCell(
    //         Text('Nutrition Info'),
    //       ),
    //       DataCell(
    //         Text('View Info +'),
    //       ),
    //     ],
    //   ),
    // );
    return List<DataRow>.generate(
      ingredientList.length,
      (int index) => DataRow(
        cells: [
          DataCell(
            Text(ingredientList[index].name),
          ),
          DataCell(
            Text(ingredientList[index].measure),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          ListView(
            physics: const ScrollPhysics(),
            shrinkWrap: true,
            children: <Widget>[
              DataTable(
                showBottomBorder: true,
                columns: const [
                  DataColumn(label: Text('Name')),
                  DataColumn(label: Text('Amount')),
                ],
                rows: ingredientsRow(),
              ),
            ],
          ),
          DataTable(
            columnSpacing: 150,
            showBottomBorder: true,
            columns: const [
              DataColumn(
                label: Text('Nutrition Info'),
              ),
              DataColumn(
                label: Text('View Info +'),
              ),
            ],
            rows: [],
          ),
        ],
      ),
    );
  }
}
