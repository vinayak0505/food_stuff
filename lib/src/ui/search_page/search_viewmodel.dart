import 'package:food_stuff/src/data/model/autocomplete_recipe_search/autocomplete_recipe_search.dart';
import 'package:food_stuff/src/repository/autocomplete_search_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final searchProvider = StateNotifierProvider((ref) => SearchViewModel(ref));

class SearchViewModel extends StateNotifier<void> {
  SearchViewModel(this._reader) : super(null);
  late final Ref _reader;

  late final AutocompleteSearchImpl _repository =
      _reader.read(autocompleteSearchProvider);

  Future<List<AutocompleteRecipeSearch>> getAutocompleteSearch(
      {int number = 5, String query = '', bool isVegetarian = false}) {
    return _repository
        .getRecipeInformation(number: number, query: query)
        .then((value) => value);
  }
}
