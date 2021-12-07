import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'random_recipe.freezed.dart';
part 'random_recipe.g.dart';

RandomRecipe randomRecipeFromJson(String str) =>
    RandomRecipe.fromJson(json.decode(str));

String randomRecipeToJson(RandomRecipe data) => json.encode(data.toJson());

@freezed
abstract class RandomRecipe with _$RandomRecipe {
  const factory RandomRecipe({
    required List<Recipe> recipes,
  }) = _RandomRecipe;

  factory RandomRecipe.fromJson(Map<String, dynamic> json) =>
      _$RandomRecipeFromJson(json);
}

@freezed
abstract class Recipe with _$Recipe {
  const factory Recipe({
    required bool vegetarian,
    required bool vegan,
    required bool glutenFree,
    required bool dairyFree,
    required bool veryHealthy,
    // required bool cheap,
    // required bool veryPopular,
    // required bool sustainable,
    // required int weightWatcherSmartPoints,
    // required Gaps gaps,
    // required bool lowFodmap,
    // required int aggregateLikes,
    // required int spoonacularScore,
    // required int healthScore,
    // CreditsText? creditsText,
    // required String license,
    // SourceName? sourceName,
    required double pricePerServing,
    // required List<ExtendedIngredient> extendedIngredients,
    required int id,
    String? title,
    required int readyInMinutes,
    required int servings,
    required String sourceUrl,
    String? image,
    required String summary,
    required List<String> cuisines,
    required List<String> dishTypes,
    required List<String> diets,
    required List<String> occasions,
    required String instructions,
    // required List<AnalyzedInstruction> analyzedInstructions,
    // required dynamic originalId,
    // required String spoonacularSourceUrl,
    // required int preparationMinutes,
    int? cookingMinutes,
  }) = _Recipe;

  factory Recipe.fromJson(Map<String, dynamic> json) => _$RecipeFromJson(json);
}

// @freezed
// abstract class AnalyzedInstruction with _$AnalyzedInstruction {
//   const factory AnalyzedInstruction({
//     // Name? name,
//     required List<Step> steps,
//   }) = _AnalyzedInstruction;
//
//   factory AnalyzedInstruction.fromJson(Map<String, dynamic> json) =>
//       _$AnalyzedInstructionFromJson(json);
// }

// @freezed
// abstract class Step with _$Step {
//   const factory Step({
//     required int number,
//     required String step,
//     required List<Ent> ingredients,
//     required List<Ent> equipment,
//     required Length length,
//   }) = _Step;
//
//   factory Step.fromJson(Map<String, dynamic> json) => _$StepFromJson(json);
// }

// @freezed
// abstract class Ent with _$Ent {
//   const factory Ent({
//     required int id,
//     required String name,
//     required String localizedName,
//     required String image,
//     required Length temperature,
//   }) = _Ent;

//   factory Ent.fromJson(Map<String, dynamic> json) => _$EntFromJson(json);
// }
//
// @freezed
// abstract class Length with _$Length {
//   const factory Length({
//     required int number,
//     Unit? unit,
//   }) = _Length;
//
//   factory Length.fromJson(Map<String, dynamic> json) => _$LengthFromJson(json);
// }

// @freezed
// abstract class ExtendedIngredient with _$ExtendedIngredient {
//   const factory ExtendedIngredient({
//     required int id,
//     // required String aisle,
//     required String image,
//     // required Consistency consistency,
//     required String name,
//     // required String nameClean,
//     required String original,
//     required String originalString,
//     required String originalName,
//     required double amount,
//     required String unit,
//     // required List<String> meta,
//     // required List<String> metaInformation,
//     required Measures measures,
//   }) = _ExtendedIngredient;
//
//   factory ExtendedIngredient.fromJson(Map<String, dynamic> json) =>
//       _$ExtendedIngredientFromJson(json);
// }

@freezed
abstract class Measures with _$Measures {
  const factory Measures({
    required Metric us,
    required Metric metric,
  }) = _Measures;

  factory Measures.fromJson(Map<String, dynamic> json) =>
      _$MeasuresFromJson(json);
}

@freezed
abstract class Metric with _$Metric {
  const factory Metric({
    required double amount,
    required String unitShort,
    required String unitLong,
  }) = _Metric;

  factory Metric.fromJson(Map<String, dynamic> json) => _$MetricFromJson(json);
}
