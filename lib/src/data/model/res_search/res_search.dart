import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';
part 'res_search.freezed.dart';
part 'res_search.g.dart';

ResSearch resSearchFromJson(String str) => ResSearch.fromJson(json.decode(str));

String resSearchToJson(ResSearch data) => json.encode(data.toJson());

@freezed
abstract class ResSearch with _$ResSearch {
  const factory ResSearch({
    required List<Result> results,
    required int offset,
    required int number,
    required int totalResults,
  }) = _ResSearch;

  factory ResSearch.fromJson(Map<String, dynamic> json) =>
      _$ResSearchFromJson(json);
}

@freezed
abstract class Result with _$Result {
  const factory Result({
    required int id,
    required String title,
    required String image,
    required String imageType,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}
