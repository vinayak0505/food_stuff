// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'res_search.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ResSearch _$$_ResSearchFromJson(Map json) => _$_ResSearch(
      results:
          (json['results'] as List<dynamic>).map((e) => Result.fromJson(Map<String, dynamic>.from(e as Map))).toList(),
      offset: json['offset'] as int,
      number: json['number'] as int,
      totalResults: json['totalResults'] as int,
    );

Map<String, dynamic> _$$_ResSearchToJson(_$_ResSearch instance) => <String, dynamic>{
      'results': instance.results,
      'offset': instance.offset,
      'number': instance.number,
      'totalResults': instance.totalResults,
    };

_$_Result _$$_ResultFromJson(Map json) => _$_Result(
      id: json['id'] as int,
      title: json['title'] as String,
      image: json['image'] as String,
      imageType: json['imageType'] as String,
    );

Map<String, dynamic> _$$_ResultToJson(_$_Result instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'image': instance.image,
      'imageType': instance.imageType,
    };
