import 'package:dio/dio.dart';
import 'package:food_stuff/src/data/datasource/app_dio.dart';
import 'package:food_stuff/src/data/model/autocomplete_recipe_search/autocomplete_recipe_search.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

abstract class AutocompleteSearchRepository {
  Future<List<AutocompleteRecipeSearch>> getRecipeInformation(
      {int number, String query});
      
}

final autocompleteSearchProvider =
    Provider((ref) => AutocompleteSearchImpl(ref.read));

class AutocompleteSearchImpl extends AutocompleteSearchRepository {
  final Reader _reader;
  late final Dio _dio = _reader(dioProvider);
  AutocompleteSearchImpl(this._reader);

  @override
  Future<List<AutocompleteRecipeSearch>> getRecipeInformation(
      {int number = 5, String query = ''}) {
    return _dio
        .get<List<dynamic>>("/recipes/autocomplete?query=$query&number=$number")
        .then((value) => value.data!
            .map((e) => AutocompleteRecipeSearch.fromJson(e))
            .toList());
  }
}
