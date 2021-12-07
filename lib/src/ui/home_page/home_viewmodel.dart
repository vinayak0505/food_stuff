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

  Future<RandomRecipe> getRandomViewPagerRecipe(
      {int number = 20, String tag = 'date'}) {
    return _idRepository
        .getRecipeInformation(number: number, tag: tag)
        .then((value) {
      return value;
    });
  }

  Future<RandomRecipe> getRandomRecipe(
      {bool isVegetarian = false, int number = 20}) {
    return _idRepository
        .getRecipeInformation(
          number: number,
          tag: isVegetarian ? "vegetarian" : "",
        )
        .then((value) => value);
  }

  Future<RandomRecipe> getRandomVegetarianRecipe(
      {int number = 20, String tag = 'vegetarian'}) {
    return _idRepository
        .getRecipeInformation(number: number, tag: tag)
        .then((value) {
      return value;
    });
  }

  Future<RandomRecipe> getRandomSweetsRecipe(
      {int number = 20, String tag = 'sweets'}) {
    return _idRepository
        .getRecipeInformation(number: number, tag: tag)
        .then((value) {
      return value;
    });
  }

  Future<RandomRecipe> getRandomVegetableRecipe(
      {int number = 20, String tag = 'vegetables'}) {
    return _idRepository
        .getRecipeInformation(number: number, tag: tag)
        .then((value) {
      return value;
    });
  }
}
