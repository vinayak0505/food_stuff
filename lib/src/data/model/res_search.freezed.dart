// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'res_search.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ResSearch _$ResSearchFromJson(Map<String, dynamic> json) {
  return _ResSearch.fromJson(json);
}

/// @nodoc
class _$ResSearchTearOff {
  const _$ResSearchTearOff();

  _ResSearch call(
      {required List<Result> results, required int offset, required int number, required int totalResults}) {
    return _ResSearch(
      results: results,
      offset: offset,
      number: number,
      totalResults: totalResults,
    );
  }

  ResSearch fromJson(Map<String, Object> json) {
    return ResSearch.fromJson(json);
  }
}

/// @nodoc
const $ResSearch = _$ResSearchTearOff();

/// @nodoc
mixin _$ResSearch {
  List<Result> get results => throw _privateConstructorUsedError;
  int get offset => throw _privateConstructorUsedError;
  int get number => throw _privateConstructorUsedError;
  int get totalResults => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResSearchCopyWith<ResSearch> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResSearchCopyWith<$Res> {
  factory $ResSearchCopyWith(ResSearch value, $Res Function(ResSearch) then) = _$ResSearchCopyWithImpl<$Res>;
  $Res call({List<Result> results, int offset, int number, int totalResults});
}

/// @nodoc
class _$ResSearchCopyWithImpl<$Res> implements $ResSearchCopyWith<$Res> {
  _$ResSearchCopyWithImpl(this._value, this._then);

  final ResSearch _value;
  // ignore: unused_field
  final $Res Function(ResSearch) _then;

  @override
  $Res call({
    Object? results = freezed,
    Object? offset = freezed,
    Object? number = freezed,
    Object? totalResults = freezed,
  }) {
    return _then(_value.copyWith(
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Result>,
      offset: offset == freezed
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      number: number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      totalResults: totalResults == freezed
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$ResSearchCopyWith<$Res> implements $ResSearchCopyWith<$Res> {
  factory _$ResSearchCopyWith(_ResSearch value, $Res Function(_ResSearch) then) = __$ResSearchCopyWithImpl<$Res>;
  @override
  $Res call({List<Result> results, int offset, int number, int totalResults});
}

/// @nodoc
class __$ResSearchCopyWithImpl<$Res> extends _$ResSearchCopyWithImpl<$Res> implements _$ResSearchCopyWith<$Res> {
  __$ResSearchCopyWithImpl(_ResSearch _value, $Res Function(_ResSearch) _then)
      : super(_value, (v) => _then(v as _ResSearch));

  @override
  _ResSearch get _value => super._value as _ResSearch;

  @override
  $Res call({
    Object? results = freezed,
    Object? offset = freezed,
    Object? number = freezed,
    Object? totalResults = freezed,
  }) {
    return _then(_ResSearch(
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Result>,
      offset: offset == freezed
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      number: number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      totalResults: totalResults == freezed
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ResSearch implements _ResSearch {
  const _$_ResSearch({required this.results, required this.offset, required this.number, required this.totalResults});

  factory _$_ResSearch.fromJson(Map<String, dynamic> json) => _$$_ResSearchFromJson(json);

  @override
  final List<Result> results;
  @override
  final int offset;
  @override
  final int number;
  @override
  final int totalResults;

  @override
  String toString() {
    return 'ResSearch(results: $results, offset: $offset, number: $number, totalResults: $totalResults)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ResSearch &&
            (identical(other.results, results) || const DeepCollectionEquality().equals(other.results, results)) &&
            (identical(other.offset, offset) || const DeepCollectionEquality().equals(other.offset, offset)) &&
            (identical(other.number, number) || const DeepCollectionEquality().equals(other.number, number)) &&
            (identical(other.totalResults, totalResults) ||
                const DeepCollectionEquality().equals(other.totalResults, totalResults)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(results) ^
      const DeepCollectionEquality().hash(offset) ^
      const DeepCollectionEquality().hash(number) ^
      const DeepCollectionEquality().hash(totalResults);

  @JsonKey(ignore: true)
  @override
  _$ResSearchCopyWith<_ResSearch> get copyWith => __$ResSearchCopyWithImpl<_ResSearch>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResSearchToJson(this);
  }
}

abstract class _ResSearch implements ResSearch {
  const factory _ResSearch(
      {required List<Result> results,
      required int offset,
      required int number,
      required int totalResults}) = _$_ResSearch;

  factory _ResSearch.fromJson(Map<String, dynamic> json) = _$_ResSearch.fromJson;

  @override
  List<Result> get results => throw _privateConstructorUsedError;
  @override
  int get offset => throw _privateConstructorUsedError;
  @override
  int get number => throw _privateConstructorUsedError;
  @override
  int get totalResults => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ResSearchCopyWith<_ResSearch> get copyWith => throw _privateConstructorUsedError;
}

Result _$ResultFromJson(Map<String, dynamic> json) {
  return _Result.fromJson(json);
}

/// @nodoc
class _$ResultTearOff {
  const _$ResultTearOff();

  _Result call({required int id, required String title, required String image, required String imageType}) {
    return _Result(
      id: id,
      title: title,
      image: image,
      imageType: imageType,
    );
  }

  Result fromJson(Map<String, Object> json) {
    return Result.fromJson(json);
  }
}

/// @nodoc
const $Result = _$ResultTearOff();

/// @nodoc
mixin _$Result {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get imageType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultCopyWith<Result> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultCopyWith<$Res> {
  factory $ResultCopyWith(Result value, $Res Function(Result) then) = _$ResultCopyWithImpl<$Res>;
  $Res call({int id, String title, String image, String imageType});
}

/// @nodoc
class _$ResultCopyWithImpl<$Res> implements $ResultCopyWith<$Res> {
  _$ResultCopyWithImpl(this._value, this._then);

  final Result _value;
  // ignore: unused_field
  final $Res Function(Result) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? image = freezed,
    Object? imageType = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      imageType: imageType == freezed
          ? _value.imageType
          : imageType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ResultCopyWith<$Res> implements $ResultCopyWith<$Res> {
  factory _$ResultCopyWith(_Result value, $Res Function(_Result) then) = __$ResultCopyWithImpl<$Res>;
  @override
  $Res call({int id, String title, String image, String imageType});
}

/// @nodoc
class __$ResultCopyWithImpl<$Res> extends _$ResultCopyWithImpl<$Res> implements _$ResultCopyWith<$Res> {
  __$ResultCopyWithImpl(_Result _value, $Res Function(_Result) _then) : super(_value, (v) => _then(v as _Result));

  @override
  _Result get _value => super._value as _Result;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? image = freezed,
    Object? imageType = freezed,
  }) {
    return _then(_Result(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      imageType: imageType == freezed
          ? _value.imageType
          : imageType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Result implements _Result {
  const _$_Result({required this.id, required this.title, required this.image, required this.imageType});

  factory _$_Result.fromJson(Map<String, dynamic> json) => _$$_ResultFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String image;
  @override
  final String imageType;

  @override
  String toString() {
    return 'Result(id: $id, title: $title, image: $image, imageType: $imageType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Result &&
            (identical(other.id, id) || const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) || const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.image, image) || const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.imageType, imageType) ||
                const DeepCollectionEquality().equals(other.imageType, imageType)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(imageType);

  @JsonKey(ignore: true)
  @override
  _$ResultCopyWith<_Result> get copyWith => __$ResultCopyWithImpl<_Result>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResultToJson(this);
  }
}

abstract class _Result implements Result {
  const factory _Result({required int id, required String title, required String image, required String imageType}) =
      _$_Result;

  factory _Result.fromJson(Map<String, dynamic> json) = _$_Result.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get image => throw _privateConstructorUsedError;
  @override
  String get imageType => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ResultCopyWith<_Result> get copyWith => throw _privateConstructorUsedError;
}
