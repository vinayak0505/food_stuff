import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'autocomplete_recipe_search.freezed.dart';
part 'autocomplete_recipe_search.g.dart';

List<AutocompleteRecipeSearch> autocompleteRecipeSearchFromJson(String str) =>
    List<AutocompleteRecipeSearch>.from(
        json.decode(str).map((x) => AutocompleteRecipeSearch.fromJson(x)));

String autocompleteRecipeSearchToJson(List<AutocompleteRecipeSearch> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
abstract class AutocompleteRecipeSearch with _$AutocompleteRecipeSearch {
  const factory AutocompleteRecipeSearch({
    required int id,
    required String title,
    // @required ImageType imageType,
  }) = _AutocompleteRecipeSearch;

  factory AutocompleteRecipeSearch.fromJson(Map<String, dynamic> json) =>
      _$AutocompleteRecipeSearchFromJson(json);
}

// class EnumValues<T> {
//   Map<String, T> map;
//   Map<T, String> reverseMap;
//
//   EnumValues(this.map);
//
//   Map<T, String> get reverse {
//     if (reverseMap == null) {
//       reverseMap = map.map((k, v) => new MapEntry(v, k));
//     }
//     return reverseMap;
//   }
// }
