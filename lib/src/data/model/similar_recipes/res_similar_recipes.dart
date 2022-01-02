import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'res_similar_recipes.freezed.dart';
part 'res_similar_recipes.g.dart';

List<ResSimilarRecipes> resSimilarRecipesFromJson(String str) => List<ResSimilarRecipes>.from(json.decode(str).map((x) => ResSimilarRecipes.fromJson(x)));

String resSimilarRecipesToJson(List<ResSimilarRecipes> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
abstract class ResSimilarRecipes with _$ResSimilarRecipes {
    const factory ResSimilarRecipes({
        int? id,
        // ImageType imageType,
        String? title,
        int? readyInMinutes,
        int? servings,
        String? sourceUrl,
    }) = _ResSimilarRecipes;

    factory ResSimilarRecipes.fromJson(Map<String, dynamic> json) => _$ResSimilarRecipesFromJson(json);
}

