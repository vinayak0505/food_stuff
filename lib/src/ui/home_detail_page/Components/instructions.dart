import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:food_stuff/src/data/model/recipe_information/res_recipe_info.dart';
import 'package:food_stuff/src/utils/constants.dart';

class Instructions extends HookWidget {
  const Instructions({required this.instructionList, Key? key})
      : super(key: key);

  final AnalysedInstructions instructionList;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView.separated(
        physics: const ScrollPhysics(),
        shrinkWrap: true,
        itemCount: instructionList.steps.length,
        itemBuilder: (context, index) =>
            _instructionStep(instructionList, index),
        separatorBuilder: (context, index) {
          return const Divider();
        },
      ),
    );
  }

  Widget _instructionStep(AnalysedInstructions step, int index) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
          child: Text(
            '${step.steps[index].number.toString()}.',
            style: kPointerStyle,
          ),
        ),
        const SizedBox(
          width: 4,
        ),
        Flexible(
          child: Text(
            step.steps[index].step ?? '',
          ),
        ),
      ],
    );
  }
}
