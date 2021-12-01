import 'package:food_stuff/src/data/model/res_search_detail.dart';
import 'package:food_stuff/src/repository/home_detail_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final homeDetailProvider = StateNotifierProvider.autoDispose<HomeDetailViewModel, AsyncValue<ResSearchDetail>>(
    (ref) => HomeDetailViewModel(ref));

class HomeDetailViewModel extends StateNotifier<AsyncValue<ResSearchDetail>> {
  HomeDetailViewModel(this._reader) : super(const AsyncValue.loading());
  late final Ref _reader;

  late final HomeDetailRepository _repository = _reader.read(homeDetailRepositoryProvider);

  Future<void> getItems(int id) {
    return _repository.getSearchDetail(id).then((value) {
      state = AsyncValue.data(value);
    });
  }
}
