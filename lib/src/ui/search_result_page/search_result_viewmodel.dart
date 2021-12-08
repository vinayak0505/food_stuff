import 'package:food_stuff/src/data/model/res_search/res_search.dart';
import 'package:food_stuff/src/repository/search_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final searchResultProvider = StateNotifierProvider.autoDispose<
    SearchResultViewModel,
    AsyncValue<List<Result>>>((ref) => SearchResultViewModel(ref.read));

class SearchResultViewModel extends StateNotifier<AsyncValue<List<Result>>> {
  SearchResultViewModel(this._reader) : super(const AsyncValue.loading());
  late final Reader _reader;

  late final SearchRepository _repository =
      _reader(searchResultRepositoryProvider);

  Future<ResSearch> getItems({required String query}) {
    return _repository.getSearch(query: query).then((value) {
      return value;
    });
  }
}
