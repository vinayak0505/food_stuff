import 'package:dio/dio.dart';
import 'package:food_stuff/src/data/datasource/app_dio.dart';
import 'package:food_stuff/src/data/model/res_search/res_search.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

abstract class SearchRepository {
  Future<ResSearch> getSearch(int count);
}

final searchResultRepositoryProvider =
    Provider((ref) => SearchResultRepositoryImpl(ref.read));

class SearchResultRepositoryImpl implements SearchRepository {
  SearchResultRepositoryImpl(this._reader);

  final Reader _reader;
  late final Dio _dio = _reader(dioProvider);

  @override
  Future<ResSearch> getSearch(int count) {
    return _dio
        .get<Map<String, dynamic>>("/recipes/complexSearch")
        .then((value) => ResSearch.fromJson(value.data!));
  }
}
