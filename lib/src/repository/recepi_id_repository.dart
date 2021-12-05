import 'package:dio/dio.dart';
import 'package:food_stuff/src/data/datasource/app_dio.dart';
import 'package:food_stuff/src/data/model/recipe_information/res_recipe_info.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

abstract class RecepiIdRepository {
  Future<ResRecipeInfo> getRecepiInformation(int recipeId);
}

final recepiIdProvider = Provider((ref) => RecepiIdImpl(ref.read));

class RecepiIdImpl extends RecepiIdRepository {
  final Reader _reader;
  late final Dio _dio = _reader(dioProvider);
  RecepiIdImpl(this._reader);

  @override
  Future<ResRecipeInfo> getRecepiInformation(int recipeId) {
    return _dio
        .get<Map<String, dynamic>>("/recipes/$recipeId/information")
        .then((value) => ResRecipeInfo.fromJson(value.data!));
  }
}
