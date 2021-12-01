import 'package:dio/dio.dart';
import 'package:food_stuff/src/data/datasource/app_dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:food_stuff/src/data/model/res_search_detail.dart';

abstract class HomeDetailRepository {
  Future<ResSearchDetail> getSearchDetail(int id);
}

final homeDetailRepositoryProvider = Provider((ref) => HomeDetailRepositoryImpl(ref.read));

class HomeDetailRepositoryImpl implements HomeDetailRepository {
  HomeDetailRepositoryImpl(this._reader);

  final Reader _reader;
  late final Dio _dio = _reader(dioProvider);

  @override
  Future<ResSearchDetail> getSearchDetail(int id) {
    return _dio
        .get<Map<String, dynamic>>("/recipes/$id/information")
        .then((value) => ResSearchDetail.fromJson(value.data!));
  }
}
