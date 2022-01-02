// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'res_similar_recipes.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ResSimilarRecipes _$ResSimilarRecipesFromJson(Map<String, dynamic> json) {
  return _ResSimilarRecipes.fromJson(json);
}

/// @nodoc
class _$ResSimilarRecipesTearOff {
  const _$ResSimilarRecipesTearOff();

  _ResSimilarRecipes call(
      {int? id,
      String? title,
      int? readyInMinutes,
      int? servings,
      String? sourceUrl}) {
    return _ResSimilarRecipes(
      id: id,
      title: title,
      readyInMinutes: readyInMinutes,
      servings: servings,
      sourceUrl: sourceUrl,
    );
  }

  ResSimilarRecipes fromJson(Map<String, Object> json) {
    return ResSimilarRecipes.fromJson(json);
  }
}

/// @nodoc
const $ResSimilarRecipes = _$ResSimilarRecipesTearOff();

/// @nodoc
mixin _$ResSimilarRecipes {
  int? get id => throw _privateConstructorUsedError; // ImageType imageType,
  String? get title => throw _privateConstructorUsedError;
  int? get readyInMinutes => throw _privateConstructorUsedError;
  int? get servings => throw _privateConstructorUsedError;
  String? get sourceUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResSimilarRecipesCopyWith<ResSimilarRecipes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResSimilarRecipesCopyWith<$Res> {
  factory $ResSimilarRecipesCopyWith(
          ResSimilarRecipes value, $Res Function(ResSimilarRecipes) then) =
      _$ResSimilarRecipesCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      String? title,
      int? readyInMinutes,
      int? servings,
      String? sourceUrl});
}

/// @nodoc
class _$ResSimilarRecipesCopyWithImpl<$Res>
    implements $ResSimilarRecipesCopyWith<$Res> {
  _$ResSimilarRecipesCopyWithImpl(this._value, this._then);

  final ResSimilarRecipes _value;
  // ignore: unused_field
  final $Res Function(ResSimilarRecipes) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? readyInMinutes = freezed,
    Object? servings = freezed,
    Object? sourceUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      readyInMinutes: readyInMinutes == freezed
          ? _value.readyInMinutes
          : readyInMinutes // ignore: cast_nullable_to_non_nullable
              as int?,
      servings: servings == freezed
          ? _value.servings
          : servings // ignore: cast_nullable_to_non_nullable
              as int?,
      sourceUrl: sourceUrl == freezed
          ? _value.sourceUrl
          : sourceUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$ResSimilarRecipesCopyWith<$Res>
    implements $ResSimilarRecipesCopyWith<$Res> {
  factory _$ResSimilarRecipesCopyWith(
          _ResSimilarRecipes value, $Res Function(_ResSimilarRecipes) then) =
      __$ResSimilarRecipesCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      String? title,
      int? readyInMinutes,
      int? servings,
      String? sourceUrl});
}

/// @nodoc
class __$ResSimilarRecipesCopyWithImpl<$Res>
    extends _$ResSimilarRecipesCopyWithImpl<$Res>
    implements _$ResSimilarRecipesCopyWith<$Res> {
  __$ResSimilarRecipesCopyWithImpl(
      _ResSimilarRecipes _value, $Res Function(_ResSimilarRecipes) _then)
      : super(_value, (v) => _then(v as _ResSimilarRecipes));

  @override
  _ResSimilarRecipes get _value => super._value as _ResSimilarRecipes;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? readyInMinutes = freezed,
    Object? servings = freezed,
    Object? sourceUrl = freezed,
  }) {
    return _then(_ResSimilarRecipes(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      readyInMinutes: readyInMinutes == freezed
          ? _value.readyInMinutes
          : readyInMinutes // ignore: cast_nullable_to_non_nullable
              as int?,
      servings: servings == freezed
          ? _value.servings
          : servings // ignore: cast_nullable_to_non_nullable
              as int?,
      sourceUrl: sourceUrl == freezed
          ? _value.sourceUrl
          : sourceUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ResSimilarRecipes implements _ResSimilarRecipes {
  const _$_ResSimilarRecipes(
      {this.id,
      this.title,
      this.readyInMinutes,
      this.servings,
      this.sourceUrl});

  factory _$_ResSimilarRecipes.fromJson(Map<String, dynamic> json) =>
      _$$_ResSimilarRecipesFromJson(json);

  @override
  final int? id;
  @override // ImageType imageType,
  final String? title;
  @override
  final int? readyInMinutes;
  @override
  final int? servings;
  @override
  final String? sourceUrl;

  @override
  String toString() {
    return 'ResSimilarRecipes(id: $id, title: $title, readyInMinutes: $readyInMinutes, servings: $servings, sourceUrl: $sourceUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ResSimilarRecipes &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.readyInMinutes, readyInMinutes) ||
                const DeepCollectionEquality()
                    .equals(other.readyInMinutes, readyInMinutes)) &&
            (identical(other.servings, servings) ||
                const DeepCollectionEquality()
                    .equals(other.servings, servings)) &&
            (identical(other.sourceUrl, sourceUrl) ||
                const DeepCollectionEquality()
                    .equals(other.sourceUrl, sourceUrl)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(readyInMinutes) ^
      const DeepCollectionEquality().hash(servings) ^
      const DeepCollectionEquality().hash(sourceUrl);

  @JsonKey(ignore: true)
  @override
  _$ResSimilarRecipesCopyWith<_ResSimilarRecipes> get copyWith =>
      __$ResSimilarRecipesCopyWithImpl<_ResSimilarRecipes>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResSimilarRecipesToJson(this);
  }
}

abstract class _ResSimilarRecipes implements ResSimilarRecipes {
  const factory _ResSimilarRecipes(
      {int? id,
      String? title,
      int? readyInMinutes,
      int? servings,
      String? sourceUrl}) = _$_ResSimilarRecipes;

  factory _ResSimilarRecipes.fromJson(Map<String, dynamic> json) =
      _$_ResSimilarRecipes.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override // ImageType imageType,
  String? get title => throw _privateConstructorUsedError;
  @override
  int? get readyInMinutes => throw _privateConstructorUsedError;
  @override
  int? get servings => throw _privateConstructorUsedError;
  @override
  String? get sourceUrl => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ResSimilarRecipesCopyWith<_ResSimilarRecipes> get copyWith =>
      throw _privateConstructorUsedError;
}
