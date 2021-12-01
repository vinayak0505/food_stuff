import 'package:dio/dio.dart';
import 'package:food_stuff/src/data/datasource/app_dio.dart';
import 'package:food_stuff/src/data/model/res_search.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

abstract class HomeRepository {
  Future<ResSearch> getSearch(int count);
}

final homeRepositoryProvider = Provider((ref) => HomeRepositoryImpl(ref.read));

class HomeRepositoryImpl implements HomeRepository {
  HomeRepositoryImpl(this._reader);

  final Reader _reader;
  late final Dio _dio = _reader(dioProvider);

  @override
  Future<ResSearch> getSearch(int count) {
    return _dio.get<Map<String, dynamic>>("/recipes/complexSearch").then((value) => ResSearch.fromJson(value.data!));
  }
}
