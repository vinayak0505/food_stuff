import 'package:dio/dio.dart';
import 'package:food_stuff/src/data/datasource/app_dio.dart';
import 'package:food_stuff/src/data/model/recipe_information/res_recipe_info.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

abstract class RecipeIdRepository {
  Future<ResRecipeInfo> getRecipeInformation(int recipeId);
}

final recipeIdProvider = Provider((ref) => RecipeIdImpl(ref.read));

class RecipeIdImpl extends RecipeIdRepository {
  final Reader _reader;
  late final Dio _dio = _reader(dioProvider);
  RecipeIdImpl(this._reader);

  @override
  Future<ResRecipeInfo> getRecipeInformation(int recipeId) {
    return _dio
        .get<Map<String, dynamic>>("/recipes/$recipeId/information")
        .then((value) => ResRecipeInfo.fromJson(value.data!));
  }
}
