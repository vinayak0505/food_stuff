import 'package:food_stuff/src/data/model/random_recipe/random_recipe.dart';
import 'package:food_stuff/src/repository/random_recipe_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final homeProvider =
    StateNotifierProvider.autoDispose<HomeViewModel, AsyncValue<RandomRecipe>>(
        (ref) => HomeViewModel(ref));

class HomeViewModel extends StateNotifier<AsyncValue<RandomRecipe>> {
  HomeViewModel(this._reader) : super(const AsyncValue.loading());
  late final Ref _reader;

  late final RandomRecipeIdImpl _idRepository =
      _reader.read(randomRecipeIdProvider);

  Future<RandomRecipe> getRandomRecipe(
      {int number = 6, String tag = '', bool isVegetarian = false}) {

    if (isVegetarian) tag = tag + ", vegetarian";
    return _idRepository
        .getRecipeInformation(number: number, tag: tag)
        .then((value) {
      return value;
    });
  }
}
