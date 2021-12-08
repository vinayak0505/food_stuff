// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'autocomplete_recipe_search.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AutocompleteRecipeSearch _$AutocompleteRecipeSearchFromJson(
    Map<String, dynamic> json) {
  return _AutocompleteRecipeSearch.fromJson(json);
}

/// @nodoc
class _$AutocompleteRecipeSearchTearOff {
  const _$AutocompleteRecipeSearchTearOff();

  _AutocompleteRecipeSearch call({required int id, required String title}) {
    return _AutocompleteRecipeSearch(
      id: id,
      title: title,
    );
  }

  AutocompleteRecipeSearch fromJson(Map<String, Object> json) {
    return AutocompleteRecipeSearch.fromJson(json);
  }
}

/// @nodoc
const $AutocompleteRecipeSearch = _$AutocompleteRecipeSearchTearOff();

/// @nodoc
mixin _$AutocompleteRecipeSearch {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AutocompleteRecipeSearchCopyWith<AutocompleteRecipeSearch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AutocompleteRecipeSearchCopyWith<$Res> {
  factory $AutocompleteRecipeSearchCopyWith(AutocompleteRecipeSearch value,
          $Res Function(AutocompleteRecipeSearch) then) =
      _$AutocompleteRecipeSearchCopyWithImpl<$Res>;
  $Res call({int id, String title});
}

/// @nodoc
class _$AutocompleteRecipeSearchCopyWithImpl<$Res>
    implements $AutocompleteRecipeSearchCopyWith<$Res> {
  _$AutocompleteRecipeSearchCopyWithImpl(this._value, this._then);

  final AutocompleteRecipeSearch _value;
  // ignore: unused_field
  final $Res Function(AutocompleteRecipeSearch) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
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
    ));
  }
}

/// @nodoc
abstract class _$AutocompleteRecipeSearchCopyWith<$Res>
    implements $AutocompleteRecipeSearchCopyWith<$Res> {
  factory _$AutocompleteRecipeSearchCopyWith(_AutocompleteRecipeSearch value,
          $Res Function(_AutocompleteRecipeSearch) then) =
      __$AutocompleteRecipeSearchCopyWithImpl<$Res>;
  @override
  $Res call({int id, String title});
}

/// @nodoc
class __$AutocompleteRecipeSearchCopyWithImpl<$Res>
    extends _$AutocompleteRecipeSearchCopyWithImpl<$Res>
    implements _$AutocompleteRecipeSearchCopyWith<$Res> {
  __$AutocompleteRecipeSearchCopyWithImpl(_AutocompleteRecipeSearch _value,
      $Res Function(_AutocompleteRecipeSearch) _then)
      : super(_value, (v) => _then(v as _AutocompleteRecipeSearch));

  @override
  _AutocompleteRecipeSearch get _value =>
      super._value as _AutocompleteRecipeSearch;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
  }) {
    return _then(_AutocompleteRecipeSearch(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AutocompleteRecipeSearch implements _AutocompleteRecipeSearch {
  const _$_AutocompleteRecipeSearch({required this.id, required this.title});

  factory _$_AutocompleteRecipeSearch.fromJson(Map<String, dynamic> json) =>
      _$$_AutocompleteRecipeSearchFromJson(json);

  @override
  final int id;
  @override
  final String title;

  @override
  String toString() {
    return 'AutocompleteRecipeSearch(id: $id, title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AutocompleteRecipeSearch &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title);

  @JsonKey(ignore: true)
  @override
  _$AutocompleteRecipeSearchCopyWith<_AutocompleteRecipeSearch> get copyWith =>
      __$AutocompleteRecipeSearchCopyWithImpl<_AutocompleteRecipeSearch>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AutocompleteRecipeSearchToJson(this);
  }
}

abstract class _AutocompleteRecipeSearch implements AutocompleteRecipeSearch {
  const factory _AutocompleteRecipeSearch(
      {required int id, required String title}) = _$_AutocompleteRecipeSearch;

  factory _AutocompleteRecipeSearch.fromJson(Map<String, dynamic> json) =
      _$_AutocompleteRecipeSearch.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AutocompleteRecipeSearchCopyWith<_AutocompleteRecipeSearch> get copyWith =>
      throw _privateConstructorUsedError;
}
