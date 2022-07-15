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
    bool? vegetarian,
    bool? vegan,
    bool? glutenFree,
    bool? dairyFree,
    bool? veryHealthy,
    bool? cheap,
    bool? veryPopular,
    bool? sustainable,
    int? weightWatcherSmartPoints,
    String? gaps,
    bool? lowFodmap,
    int? aggregateLikes,
    double? healthScore,
    String? creditsText,
    String? license,
    String? sourceName,
    required List<ExtendedIngredient> extendedIngredients,
    int? id,
    String? title,
    int? readyInMinutes,
    int? servings,
    String? sourceUrl,
    String? image,
    String? imageType,
    String? summary,
    required List<dynamic> cuisines,
    required List<String> dishTypes,
    required List<String> diets,
    required List<dynamic> occasions,
    String? instructions,
    required List<AnalysedInstructions> analyzedInstructions,
    dynamic? originalId,
    String? spoonacularSourceUrl,
  }) = _ResRecipeInfo;

  factory ResRecipeInfo.fromJson(Map<String, dynamic> json) =>
      _$ResRecipeInfoFromJson(json);
}

@freezed
abstract class ExtendedIngredient with _$ExtendedIngredient {
  const factory ExtendedIngredient({
    int? id,
    String? aisle,
    String? image,
    String? consistency,
    String? name,
    String? nameClean,
    String? original,
    String? originalString,
    String? originalName,
    double? amount,
    String? unit,
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
        String? name,
        required List<Step> steps,
    }) = _AnalysedInstructions;

    factory AnalysedInstructions.fromJson(Map<String, dynamic> json) => _$AnalysedInstructionsFromJson(json);
}

@freezed
abstract class Step with _$Step {
    const factory Step({
        int? number,
        String? step,
        required List<Ent> ingredients,
        required List<Ent> equipment,
        // Length? length,
    }) = _Step;

    factory Step.fromJson(Map<String, dynamic> json) => _$StepFromJson(json);
}

@freezed
abstract class Ent with _$Ent {
    const factory Ent({
        int? id,
        String? name,
        String? localizedName,
        String? image,
    }) = _Ent;

    factory Ent.fromJson(Map<String, dynamic> json) => _$EntFromJson(json);
}

@freezed
abstract class Length with _$Length {
    const factory Length({
        int? number,
        String? unit,
    }) = _Length;

    factory Length.fromJson(Map<String, dynamic> json) => _$LengthFromJson(json);
}
