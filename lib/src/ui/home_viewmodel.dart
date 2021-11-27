import 'package:food_stuff/src/data/model/res_search.dart';
import 'package:food_stuff/src/repository/home_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final homeProvider =
    StateNotifierProvider.autoDispose<HomeViewModel, AsyncValue<List<Result>>>(
        (ref) => HomeViewModel(ref.read));

class HomeViewModel extends StateNotifier<AsyncValue<List<Result>>> {
  HomeViewModel(this._reader) : super(const AsyncValue.loading());
  late final Reader _reader;

  late final HomeRepository _repository = _reader(homeRepositoryProvider);

  Future<void> getItems() {
    return _repository.getSearch(10).then((value) {
      state = AsyncValue.data(value.results);
    });
  }
}
