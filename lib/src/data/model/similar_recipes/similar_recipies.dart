import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'similar_recipes.freezed.dart';
part 'similar_recipes.g.dart';

List<SimilarRecipes> similarRecipesFromJson(String str) => List<SimilarRecipes>.from(json.decode(str).map((x) => SimilarRecipes.fromJson(x)));

String similarRecipesToJson(List<SimilarRecipes> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
abstract class SimilarRecipes with _$SimilarRecipes {
    const factory SimilarRecipes({
        required int id,
        // required ImageType imageType,
        required String title,
        required int readyInMinutes,
        required int servings,
        required String sourceUrl,
    }) = _SimilarRecipes;

    factory SimilarRecipes.fromJson(Map<String, dynamic> json) => _$SimilarRecipesFromJson(json);
}
