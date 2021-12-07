import 'package:food_stuff/src/data/model/recipe_information/res_recipe_info.dart';
import 'package:food_stuff/src/repository/recepi_id_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final homeDetailProvider = StateNotifierProvider.autoDispose<
    HomeDetailViewModel,
    AsyncValue<ResRecipeInfo>>((ref) => HomeDetailViewModel(ref));

class HomeDetailViewModel extends StateNotifier<AsyncValue<ResRecipeInfo>> {
  HomeDetailViewModel(this._reader) : super(const AsyncValue.loading());
  late final Ref _reader;

  late final RecipeIdImpl _idRepository = _reader.read(recipeIdProvider);

  Future<ResRecipeInfo> getRecipeInformation({int id = 716427}) {
    return _idRepository.getRecipeInformation(id).then((value) {
      return value;
    });
  }
}
