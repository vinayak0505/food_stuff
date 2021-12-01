import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'res_search_detail.freezed.dart';
part 'res_search_detail.g.dart';

ResSearchDetail resSearchDetailFromJson(String str) => ResSearchDetail.fromJson(json.decode(str));

String resSearchDetailToJson(ResSearchDetail data) => json.encode(data.toJson());

@freezed
abstract class ResSearchDetail with _$ResSearchDetail {
  const factory ResSearchDetail({
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
    double? spoonacularScore,
    double? healthScore,
    String? creditsText,
    String? license,
    String? sourceName,
    double? pricePerServing,
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
    WinePairing? winePairing,
    String? instructions,
    required List<dynamic> analyzedInstructions,
    required dynamic originalId,
    String? spoonacularSourceUrl,
  }) = _ResSearchDetail;

  factory ResSearchDetail.fromJson(Map<String, dynamic> json) => _$ResSearchDetailFromJson(json);
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
    required Measures measures,
  }) = _ExtendedIngredient;

  factory ExtendedIngredient.fromJson(Map<String, dynamic> json) => _$ExtendedIngredientFromJson(json);
}

@freezed
abstract class Measures with _$Measures {
  const factory Measures({
    required Metric us,
    required Metric metric,
  }) = _Measures;

  factory Measures.fromJson(Map<String, dynamic> json) => _$MeasuresFromJson(json);
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

@freezed
abstract class WinePairing with _$WinePairing {
  const factory WinePairing() = _WinePairing;

  factory WinePairing.fromJson(Map<String, dynamic> json) => _$WinePairingFromJson(json);
}
