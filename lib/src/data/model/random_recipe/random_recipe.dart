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
    required double pricePerServing,
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
    int? cookingMinutes,
  }) = _Recipe;

  factory Recipe.fromJson(Map<String, dynamic> json) => _$RecipeFromJson(json);
}

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
