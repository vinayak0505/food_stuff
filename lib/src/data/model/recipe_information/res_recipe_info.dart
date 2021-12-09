import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'res_recipe_info.freezed.dart';
part 'res_recipe_info.g.dart';

ResRecipeInfo resRecipeInfoFromJson(String str) =>
    ResRecipeInfo.fromJson(json.decode(str));

String resRecipeInfoToJson(ResRecipeInfo data) => json.encode(data.toJson());

@freezed
abstract class ResRecipeInfo with _$ResRecipeInfo {
  const factory ResRecipeInfo({
    required bool vegetarian,
    required bool vegan,
    required bool glutenFree,
    required bool dairyFree,
    required bool veryHealthy,
    required bool cheap,
    required bool veryPopular,
    required bool sustainable,
    required int weightWatcherSmartPoints,
    required String gaps,
    required bool lowFodmap,
    required int aggregateLikes,
    // required double spoonacularScore,
    required double healthScore,
    required String creditsText,
    required String license,
    required String sourceName,
    // required double pricePerServing,
    required List<ExtendedIngredient> extendedIngredients,
    required int id,
    required String title,
    required int readyInMinutes,
    required int servings,
    required String sourceUrl,
    required String image,
    required String imageType,
    required String summary,
    required List<dynamic> cuisines,
    required List<String> dishTypes,
    required List<String> diets,
    required List<dynamic> occasions,
    required String instructions,
    required List<AnalysedInstructions> analyzedInstructions,
    required dynamic originalId,
    required String spoonacularSourceUrl,
  }) = _ResRecipeInfo;

  factory ResRecipeInfo.fromJson(Map<String, dynamic> json) =>
      _$ResRecipeInfoFromJson(json);
}

@freezed
abstract class ExtendedIngredient with _$ExtendedIngredient {
  const factory ExtendedIngredient({
    required int id,
    required String aisle,
    required String image,
    required String consistency,
    required String name,
    required String nameClean,
    required String original,
    required String originalString,
    required String originalName,
    required double amount,
    required String unit,
    required List<String> meta,
    required List<String> metaInformation,
  }) = _ExtendedIngredient;

  factory ExtendedIngredient.fromJson(Map<String, dynamic> json) =>
      _$ExtendedIngredientFromJson(json);
}


List<AnalysedInstructions> analysedInstructionsFromJson(String str) => List<AnalysedInstructions>.from(json.decode(str).map((x) => AnalysedInstructions.fromJson(x)));

String analysedInstructionsToJson(List<AnalysedInstructions> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
abstract class AnalysedInstructions with _$AnalysedInstructions {
    const factory AnalysedInstructions({
        required String name,
        required List<Step> steps,
    }) = _AnalysedInstructions;

    factory AnalysedInstructions.fromJson(Map<String, dynamic> json) => _$AnalysedInstructionsFromJson(json);
}

@freezed
abstract class Step with _$Step {
    const factory Step({
        required int number,
        required String step,
        required List<Ent> ingredients,
        required List<Ent> equipment,
        required Length length,
    }) = _Step;

    factory Step.fromJson(Map<String, dynamic> json) => _$StepFromJson(json);
}

@freezed
abstract class Ent with _$Ent {
    const factory Ent({
        required int id,
        required String name,
        required String localizedName,
        required String image,
    }) = _Ent;

    factory Ent.fromJson(Map<String, dynamic> json) => _$EntFromJson(json);
}

@freezed
abstract class Length with _$Length {
    const factory Length({
        required int number,
        required String unit,
    }) = _Length;

    factory Length.fromJson(Map<String, dynamic> json) => _$LengthFromJson(json);
}
