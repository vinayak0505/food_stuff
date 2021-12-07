// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'random_recipe.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RandomRecipe _$RandomRecipeFromJson(Map<String, dynamic> json) {
  return _RandomRecipe.fromJson(json);
}

/// @nodoc
class _$RandomRecipeTearOff {
  const _$RandomRecipeTearOff();

  _RandomRecipe call({required List<Recipe> recipes}) {
    return _RandomRecipe(
      recipes: recipes,
    );
  }

  RandomRecipe fromJson(Map<String, Object> json) {
    return RandomRecipe.fromJson(json);
  }
}

/// @nodoc
const $RandomRecipe = _$RandomRecipeTearOff();

/// @nodoc
mixin _$RandomRecipe {
  List<Recipe> get recipes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RandomRecipeCopyWith<RandomRecipe> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RandomRecipeCopyWith<$Res> {
  factory $RandomRecipeCopyWith(
          RandomRecipe value, $Res Function(RandomRecipe) then) =
      _$RandomRecipeCopyWithImpl<$Res>;
  $Res call({List<Recipe> recipes});
}

/// @nodoc
class _$RandomRecipeCopyWithImpl<$Res> implements $RandomRecipeCopyWith<$Res> {
  _$RandomRecipeCopyWithImpl(this._value, this._then);

  final RandomRecipe _value;
  // ignore: unused_field
  final $Res Function(RandomRecipe) _then;

  @override
  $Res call({
    Object? recipes = freezed,
  }) {
    return _then(_value.copyWith(
      recipes: recipes == freezed
          ? _value.recipes
          : recipes // ignore: cast_nullable_to_non_nullable
              as List<Recipe>,
    ));
  }
}

/// @nodoc
abstract class _$RandomRecipeCopyWith<$Res>
    implements $RandomRecipeCopyWith<$Res> {
  factory _$RandomRecipeCopyWith(
          _RandomRecipe value, $Res Function(_RandomRecipe) then) =
      __$RandomRecipeCopyWithImpl<$Res>;
  @override
  $Res call({List<Recipe> recipes});
}

/// @nodoc
class __$RandomRecipeCopyWithImpl<$Res> extends _$RandomRecipeCopyWithImpl<$Res>
    implements _$RandomRecipeCopyWith<$Res> {
  __$RandomRecipeCopyWithImpl(
      _RandomRecipe _value, $Res Function(_RandomRecipe) _then)
      : super(_value, (v) => _then(v as _RandomRecipe));

  @override
  _RandomRecipe get _value => super._value as _RandomRecipe;

  @override
  $Res call({
    Object? recipes = freezed,
  }) {
    return _then(_RandomRecipe(
      recipes: recipes == freezed
          ? _value.recipes
          : recipes // ignore: cast_nullable_to_non_nullable
              as List<Recipe>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RandomRecipe implements _RandomRecipe {
  const _$_RandomRecipe({required this.recipes});

  factory _$_RandomRecipe.fromJson(Map<String, dynamic> json) =>
      _$$_RandomRecipeFromJson(json);

  @override
  final List<Recipe> recipes;

  @override
  String toString() {
    return 'RandomRecipe(recipes: $recipes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RandomRecipe &&
            (identical(other.recipes, recipes) ||
                const DeepCollectionEquality().equals(other.recipes, recipes)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(recipes);

  @JsonKey(ignore: true)
  @override
  _$RandomRecipeCopyWith<_RandomRecipe> get copyWith =>
      __$RandomRecipeCopyWithImpl<_RandomRecipe>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RandomRecipeToJson(this);
  }
}

abstract class _RandomRecipe implements RandomRecipe {
  const factory _RandomRecipe({required List<Recipe> recipes}) =
      _$_RandomRecipe;

  factory _RandomRecipe.fromJson(Map<String, dynamic> json) =
      _$_RandomRecipe.fromJson;

  @override
  List<Recipe> get recipes => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RandomRecipeCopyWith<_RandomRecipe> get copyWith =>
      throw _privateConstructorUsedError;
}

Recipe _$RecipeFromJson(Map<String, dynamic> json) {
  return _Recipe.fromJson(json);
}

/// @nodoc
class _$RecipeTearOff {
  const _$RecipeTearOff();

  _Recipe call(
      {required bool vegetarian,
      required bool vegan,
      required bool glutenFree,
      required bool dairyFree,
      required bool veryHealthy,
      required double pricePerServing,
      required int id,
      String? title,
      required int readyInMinutes,
      required int servings,
      required String sourceUrl,
      String? image,
      required String summary,
      required List<String> cuisines,
      required List<String> dishTypes,
      required List<String> diets,
      required List<String> occasions,
      required String instructions,
      int? cookingMinutes}) {
    return _Recipe(
      vegetarian: vegetarian,
      vegan: vegan,
      glutenFree: glutenFree,
      dairyFree: dairyFree,
      veryHealthy: veryHealthy,
      pricePerServing: pricePerServing,
      id: id,
      title: title,
      readyInMinutes: readyInMinutes,
      servings: servings,
      sourceUrl: sourceUrl,
      image: image,
      summary: summary,
      cuisines: cuisines,
      dishTypes: dishTypes,
      diets: diets,
      occasions: occasions,
      instructions: instructions,
      cookingMinutes: cookingMinutes,
    );
  }

  Recipe fromJson(Map<String, Object> json) {
    return Recipe.fromJson(json);
  }
}

/// @nodoc
const $Recipe = _$RecipeTearOff();

/// @nodoc
mixin _$Recipe {
  bool get vegetarian => throw _privateConstructorUsedError;
  bool get vegan => throw _privateConstructorUsedError;
  bool get glutenFree => throw _privateConstructorUsedError;
  bool get dairyFree => throw _privateConstructorUsedError;
  bool get veryHealthy =>
      throw _privateConstructorUsedError; // required bool cheap,
// required bool veryPopular,
// required bool sustainable,
// required int weightWatcherSmartPoints,
// required Gaps gaps,
// required bool lowFodmap,
// required int aggregateLikes,
// required int spoonacularScore,
// required int healthScore,
// CreditsText? creditsText,
// required String license,
// SourceName? sourceName,
  double get pricePerServing =>
      throw _privateConstructorUsedError; // required List<ExtendedIngredient> extendedIngredients,
  int get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  int get readyInMinutes => throw _privateConstructorUsedError;
  int get servings => throw _privateConstructorUsedError;
  String get sourceUrl => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String get summary => throw _privateConstructorUsedError;
  List<String> get cuisines => throw _privateConstructorUsedError;
  List<String> get dishTypes => throw _privateConstructorUsedError;
  List<String> get diets => throw _privateConstructorUsedError;
  List<String> get occasions => throw _privateConstructorUsedError;
  String get instructions =>
      throw _privateConstructorUsedError; // required List<AnalyzedInstruction> analyzedInstructions,
// required dynamic originalId,
// required String spoonacularSourceUrl,
// required int preparationMinutes,
  int? get cookingMinutes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecipeCopyWith<Recipe> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeCopyWith<$Res> {
  factory $RecipeCopyWith(Recipe value, $Res Function(Recipe) then) =
      _$RecipeCopyWithImpl<$Res>;
  $Res call(
      {bool vegetarian,
      bool vegan,
      bool glutenFree,
      bool dairyFree,
      bool veryHealthy,
      double pricePerServing,
      int id,
      String? title,
      int readyInMinutes,
      int servings,
      String sourceUrl,
      String? image,
      String summary,
      List<String> cuisines,
      List<String> dishTypes,
      List<String> diets,
      List<String> occasions,
      String instructions,
      int? cookingMinutes});
}

/// @nodoc
class _$RecipeCopyWithImpl<$Res> implements $RecipeCopyWith<$Res> {
  _$RecipeCopyWithImpl(this._value, this._then);

  final Recipe _value;
  // ignore: unused_field
  final $Res Function(Recipe) _then;

  @override
  $Res call({
    Object? vegetarian = freezed,
    Object? vegan = freezed,
    Object? glutenFree = freezed,
    Object? dairyFree = freezed,
    Object? veryHealthy = freezed,
    Object? pricePerServing = freezed,
    Object? id = freezed,
    Object? title = freezed,
    Object? readyInMinutes = freezed,
    Object? servings = freezed,
    Object? sourceUrl = freezed,
    Object? image = freezed,
    Object? summary = freezed,
    Object? cuisines = freezed,
    Object? dishTypes = freezed,
    Object? diets = freezed,
    Object? occasions = freezed,
    Object? instructions = freezed,
    Object? cookingMinutes = freezed,
  }) {
    return _then(_value.copyWith(
      vegetarian: vegetarian == freezed
          ? _value.vegetarian
          : vegetarian // ignore: cast_nullable_to_non_nullable
              as bool,
      vegan: vegan == freezed
          ? _value.vegan
          : vegan // ignore: cast_nullable_to_non_nullable
              as bool,
      glutenFree: glutenFree == freezed
          ? _value.glutenFree
          : glutenFree // ignore: cast_nullable_to_non_nullable
              as bool,
      dairyFree: dairyFree == freezed
          ? _value.dairyFree
          : dairyFree // ignore: cast_nullable_to_non_nullable
              as bool,
      veryHealthy: veryHealthy == freezed
          ? _value.veryHealthy
          : veryHealthy // ignore: cast_nullable_to_non_nullable
              as bool,
      pricePerServing: pricePerServing == freezed
          ? _value.pricePerServing
          : pricePerServing // ignore: cast_nullable_to_non_nullable
              as double,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      readyInMinutes: readyInMinutes == freezed
          ? _value.readyInMinutes
          : readyInMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      servings: servings == freezed
          ? _value.servings
          : servings // ignore: cast_nullable_to_non_nullable
              as int,
      sourceUrl: sourceUrl == freezed
          ? _value.sourceUrl
          : sourceUrl // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      summary: summary == freezed
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String,
      cuisines: cuisines == freezed
          ? _value.cuisines
          : cuisines // ignore: cast_nullable_to_non_nullable
              as List<String>,
      dishTypes: dishTypes == freezed
          ? _value.dishTypes
          : dishTypes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      diets: diets == freezed
          ? _value.diets
          : diets // ignore: cast_nullable_to_non_nullable
              as List<String>,
      occasions: occasions == freezed
          ? _value.occasions
          : occasions // ignore: cast_nullable_to_non_nullable
              as List<String>,
      instructions: instructions == freezed
          ? _value.instructions
          : instructions // ignore: cast_nullable_to_non_nullable
              as String,
      cookingMinutes: cookingMinutes == freezed
          ? _value.cookingMinutes
          : cookingMinutes // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$RecipeCopyWith<$Res> implements $RecipeCopyWith<$Res> {
  factory _$RecipeCopyWith(_Recipe value, $Res Function(_Recipe) then) =
      __$RecipeCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool vegetarian,
      bool vegan,
      bool glutenFree,
      bool dairyFree,
      bool veryHealthy,
      double pricePerServing,
      int id,
      String? title,
      int readyInMinutes,
      int servings,
      String sourceUrl,
      String? image,
      String summary,
      List<String> cuisines,
      List<String> dishTypes,
      List<String> diets,
      List<String> occasions,
      String instructions,
      int? cookingMinutes});
}

/// @nodoc
class __$RecipeCopyWithImpl<$Res> extends _$RecipeCopyWithImpl<$Res>
    implements _$RecipeCopyWith<$Res> {
  __$RecipeCopyWithImpl(_Recipe _value, $Res Function(_Recipe) _then)
      : super(_value, (v) => _then(v as _Recipe));

  @override
  _Recipe get _value => super._value as _Recipe;

  @override
  $Res call({
    Object? vegetarian = freezed,
    Object? vegan = freezed,
    Object? glutenFree = freezed,
    Object? dairyFree = freezed,
    Object? veryHealthy = freezed,
    Object? pricePerServing = freezed,
    Object? id = freezed,
    Object? title = freezed,
    Object? readyInMinutes = freezed,
    Object? servings = freezed,
    Object? sourceUrl = freezed,
    Object? image = freezed,
    Object? summary = freezed,
    Object? cuisines = freezed,
    Object? dishTypes = freezed,
    Object? diets = freezed,
    Object? occasions = freezed,
    Object? instructions = freezed,
    Object? cookingMinutes = freezed,
  }) {
    return _then(_Recipe(
      vegetarian: vegetarian == freezed
          ? _value.vegetarian
          : vegetarian // ignore: cast_nullable_to_non_nullable
              as bool,
      vegan: vegan == freezed
          ? _value.vegan
          : vegan // ignore: cast_nullable_to_non_nullable
              as bool,
      glutenFree: glutenFree == freezed
          ? _value.glutenFree
          : glutenFree // ignore: cast_nullable_to_non_nullable
              as bool,
      dairyFree: dairyFree == freezed
          ? _value.dairyFree
          : dairyFree // ignore: cast_nullable_to_non_nullable
              as bool,
      veryHealthy: veryHealthy == freezed
          ? _value.veryHealthy
          : veryHealthy // ignore: cast_nullable_to_non_nullable
              as bool,
      pricePerServing: pricePerServing == freezed
          ? _value.pricePerServing
          : pricePerServing // ignore: cast_nullable_to_non_nullable
              as double,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      readyInMinutes: readyInMinutes == freezed
          ? _value.readyInMinutes
          : readyInMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      servings: servings == freezed
          ? _value.servings
          : servings // ignore: cast_nullable_to_non_nullable
              as int,
      sourceUrl: sourceUrl == freezed
          ? _value.sourceUrl
          : sourceUrl // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      summary: summary == freezed
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String,
      cuisines: cuisines == freezed
          ? _value.cuisines
          : cuisines // ignore: cast_nullable_to_non_nullable
              as List<String>,
      dishTypes: dishTypes == freezed
          ? _value.dishTypes
          : dishTypes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      diets: diets == freezed
          ? _value.diets
          : diets // ignore: cast_nullable_to_non_nullable
              as List<String>,
      occasions: occasions == freezed
          ? _value.occasions
          : occasions // ignore: cast_nullable_to_non_nullable
              as List<String>,
      instructions: instructions == freezed
          ? _value.instructions
          : instructions // ignore: cast_nullable_to_non_nullable
              as String,
      cookingMinutes: cookingMinutes == freezed
          ? _value.cookingMinutes
          : cookingMinutes // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Recipe implements _Recipe {
  const _$_Recipe(
      {required this.vegetarian,
      required this.vegan,
      required this.glutenFree,
      required this.dairyFree,
      required this.veryHealthy,
      required this.pricePerServing,
      required this.id,
      this.title,
      required this.readyInMinutes,
      required this.servings,
      required this.sourceUrl,
      this.image,
      required this.summary,
      required this.cuisines,
      required this.dishTypes,
      required this.diets,
      required this.occasions,
      required this.instructions,
      this.cookingMinutes});

  factory _$_Recipe.fromJson(Map<String, dynamic> json) =>
      _$$_RecipeFromJson(json);

  @override
  final bool vegetarian;
  @override
  final bool vegan;
  @override
  final bool glutenFree;
  @override
  final bool dairyFree;
  @override
  final bool veryHealthy;
  @override // required bool cheap,
// required bool veryPopular,
// required bool sustainable,
// required int weightWatcherSmartPoints,
// required Gaps gaps,
// required bool lowFodmap,
// required int aggregateLikes,
// required int spoonacularScore,
// required int healthScore,
// CreditsText? creditsText,
// required String license,
// SourceName? sourceName,
  final double pricePerServing;
  @override // required List<ExtendedIngredient> extendedIngredients,
  final int id;
  @override
  final String? title;
  @override
  final int readyInMinutes;
  @override
  final int servings;
  @override
  final String sourceUrl;
  @override
  final String? image;
  @override
  final String summary;
  @override
  final List<String> cuisines;
  @override
  final List<String> dishTypes;
  @override
  final List<String> diets;
  @override
  final List<String> occasions;
  @override
  final String instructions;
  @override // required List<AnalyzedInstruction> analyzedInstructions,
// required dynamic originalId,
// required String spoonacularSourceUrl,
// required int preparationMinutes,
  final int? cookingMinutes;

  @override
  String toString() {
    return 'Recipe(vegetarian: $vegetarian, vegan: $vegan, glutenFree: $glutenFree, dairyFree: $dairyFree, veryHealthy: $veryHealthy, pricePerServing: $pricePerServing, id: $id, title: $title, readyInMinutes: $readyInMinutes, servings: $servings, sourceUrl: $sourceUrl, image: $image, summary: $summary, cuisines: $cuisines, dishTypes: $dishTypes, diets: $diets, occasions: $occasions, instructions: $instructions, cookingMinutes: $cookingMinutes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Recipe &&
            (identical(other.vegetarian, vegetarian) ||
                const DeepCollectionEquality()
                    .equals(other.vegetarian, vegetarian)) &&
            (identical(other.vegan, vegan) ||
                const DeepCollectionEquality().equals(other.vegan, vegan)) &&
            (identical(other.glutenFree, glutenFree) ||
                const DeepCollectionEquality()
                    .equals(other.glutenFree, glutenFree)) &&
            (identical(other.dairyFree, dairyFree) ||
                const DeepCollectionEquality()
                    .equals(other.dairyFree, dairyFree)) &&
            (identical(other.veryHealthy, veryHealthy) ||
                const DeepCollectionEquality()
                    .equals(other.veryHealthy, veryHealthy)) &&
            (identical(other.pricePerServing, pricePerServing) ||
                const DeepCollectionEquality()
                    .equals(other.pricePerServing, pricePerServing)) &&
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
                    .equals(other.sourceUrl, sourceUrl)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.summary, summary) ||
                const DeepCollectionEquality()
                    .equals(other.summary, summary)) &&
            (identical(other.cuisines, cuisines) ||
                const DeepCollectionEquality()
                    .equals(other.cuisines, cuisines)) &&
            (identical(other.dishTypes, dishTypes) ||
                const DeepCollectionEquality()
                    .equals(other.dishTypes, dishTypes)) &&
            (identical(other.diets, diets) ||
                const DeepCollectionEquality().equals(other.diets, diets)) &&
            (identical(other.occasions, occasions) ||
                const DeepCollectionEquality()
                    .equals(other.occasions, occasions)) &&
            (identical(other.instructions, instructions) ||
                const DeepCollectionEquality()
                    .equals(other.instructions, instructions)) &&
            (identical(other.cookingMinutes, cookingMinutes) ||
                const DeepCollectionEquality()
                    .equals(other.cookingMinutes, cookingMinutes)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(vegetarian) ^
      const DeepCollectionEquality().hash(vegan) ^
      const DeepCollectionEquality().hash(glutenFree) ^
      const DeepCollectionEquality().hash(dairyFree) ^
      const DeepCollectionEquality().hash(veryHealthy) ^
      const DeepCollectionEquality().hash(pricePerServing) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(readyInMinutes) ^
      const DeepCollectionEquality().hash(servings) ^
      const DeepCollectionEquality().hash(sourceUrl) ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(summary) ^
      const DeepCollectionEquality().hash(cuisines) ^
      const DeepCollectionEquality().hash(dishTypes) ^
      const DeepCollectionEquality().hash(diets) ^
      const DeepCollectionEquality().hash(occasions) ^
      const DeepCollectionEquality().hash(instructions) ^
      const DeepCollectionEquality().hash(cookingMinutes);

  @JsonKey(ignore: true)
  @override
  _$RecipeCopyWith<_Recipe> get copyWith =>
      __$RecipeCopyWithImpl<_Recipe>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RecipeToJson(this);
  }
}

abstract class _Recipe implements Recipe {
  const factory _Recipe(
      {required bool vegetarian,
      required bool vegan,
      required bool glutenFree,
      required bool dairyFree,
      required bool veryHealthy,
      required double pricePerServing,
      required int id,
      String? title,
      required int readyInMinutes,
      required int servings,
      required String sourceUrl,
      String? image,
      required String summary,
      required List<String> cuisines,
      required List<String> dishTypes,
      required List<String> diets,
      required List<String> occasions,
      required String instructions,
      int? cookingMinutes}) = _$_Recipe;

  factory _Recipe.fromJson(Map<String, dynamic> json) = _$_Recipe.fromJson;

  @override
  bool get vegetarian => throw _privateConstructorUsedError;
  @override
  bool get vegan => throw _privateConstructorUsedError;
  @override
  bool get glutenFree => throw _privateConstructorUsedError;
  @override
  bool get dairyFree => throw _privateConstructorUsedError;
  @override
  bool get veryHealthy => throw _privateConstructorUsedError;
  @override // required bool cheap,
// required bool veryPopular,
// required bool sustainable,
// required int weightWatcherSmartPoints,
// required Gaps gaps,
// required bool lowFodmap,
// required int aggregateLikes,
// required int spoonacularScore,
// required int healthScore,
// CreditsText? creditsText,
// required String license,
// SourceName? sourceName,
  double get pricePerServing => throw _privateConstructorUsedError;
  @override // required List<ExtendedIngredient> extendedIngredients,
  int get id => throw _privateConstructorUsedError;
  @override
  String? get title => throw _privateConstructorUsedError;
  @override
  int get readyInMinutes => throw _privateConstructorUsedError;
  @override
  int get servings => throw _privateConstructorUsedError;
  @override
  String get sourceUrl => throw _privateConstructorUsedError;
  @override
  String? get image => throw _privateConstructorUsedError;
  @override
  String get summary => throw _privateConstructorUsedError;
  @override
  List<String> get cuisines => throw _privateConstructorUsedError;
  @override
  List<String> get dishTypes => throw _privateConstructorUsedError;
  @override
  List<String> get diets => throw _privateConstructorUsedError;
  @override
  List<String> get occasions => throw _privateConstructorUsedError;
  @override
  String get instructions => throw _privateConstructorUsedError;
  @override // required List<AnalyzedInstruction> analyzedInstructions,
// required dynamic originalId,
// required String spoonacularSourceUrl,
// required int preparationMinutes,
  int? get cookingMinutes => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RecipeCopyWith<_Recipe> get copyWith => throw _privateConstructorUsedError;
}

Measures _$MeasuresFromJson(Map<String, dynamic> json) {
  return _Measures.fromJson(json);
}

/// @nodoc
class _$MeasuresTearOff {
  const _$MeasuresTearOff();

  _Measures call({required Metric us, required Metric metric}) {
    return _Measures(
      us: us,
      metric: metric,
    );
  }

  Measures fromJson(Map<String, Object> json) {
    return Measures.fromJson(json);
  }
}

/// @nodoc
const $Measures = _$MeasuresTearOff();

/// @nodoc
mixin _$Measures {
  Metric get us => throw _privateConstructorUsedError;
  Metric get metric => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MeasuresCopyWith<Measures> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeasuresCopyWith<$Res> {
  factory $MeasuresCopyWith(Measures value, $Res Function(Measures) then) =
      _$MeasuresCopyWithImpl<$Res>;
  $Res call({Metric us, Metric metric});

  $MetricCopyWith<$Res> get us;
  $MetricCopyWith<$Res> get metric;
}

/// @nodoc
class _$MeasuresCopyWithImpl<$Res> implements $MeasuresCopyWith<$Res> {
  _$MeasuresCopyWithImpl(this._value, this._then);

  final Measures _value;
  // ignore: unused_field
  final $Res Function(Measures) _then;

  @override
  $Res call({
    Object? us = freezed,
    Object? metric = freezed,
  }) {
    return _then(_value.copyWith(
      us: us == freezed
          ? _value.us
          : us // ignore: cast_nullable_to_non_nullable
              as Metric,
      metric: metric == freezed
          ? _value.metric
          : metric // ignore: cast_nullable_to_non_nullable
              as Metric,
    ));
  }

  @override
  $MetricCopyWith<$Res> get us {
    return $MetricCopyWith<$Res>(_value.us, (value) {
      return _then(_value.copyWith(us: value));
    });
  }

  @override
  $MetricCopyWith<$Res> get metric {
    return $MetricCopyWith<$Res>(_value.metric, (value) {
      return _then(_value.copyWith(metric: value));
    });
  }
}

/// @nodoc
abstract class _$MeasuresCopyWith<$Res> implements $MeasuresCopyWith<$Res> {
  factory _$MeasuresCopyWith(_Measures value, $Res Function(_Measures) then) =
      __$MeasuresCopyWithImpl<$Res>;
  @override
  $Res call({Metric us, Metric metric});

  @override
  $MetricCopyWith<$Res> get us;
  @override
  $MetricCopyWith<$Res> get metric;
}

/// @nodoc
class __$MeasuresCopyWithImpl<$Res> extends _$MeasuresCopyWithImpl<$Res>
    implements _$MeasuresCopyWith<$Res> {
  __$MeasuresCopyWithImpl(_Measures _value, $Res Function(_Measures) _then)
      : super(_value, (v) => _then(v as _Measures));

  @override
  _Measures get _value => super._value as _Measures;

  @override
  $Res call({
    Object? us = freezed,
    Object? metric = freezed,
  }) {
    return _then(_Measures(
      us: us == freezed
          ? _value.us
          : us // ignore: cast_nullable_to_non_nullable
              as Metric,
      metric: metric == freezed
          ? _value.metric
          : metric // ignore: cast_nullable_to_non_nullable
              as Metric,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Measures implements _Measures {
  const _$_Measures({required this.us, required this.metric});

  factory _$_Measures.fromJson(Map<String, dynamic> json) =>
      _$$_MeasuresFromJson(json);

  @override
  final Metric us;
  @override
  final Metric metric;

  @override
  String toString() {
    return 'Measures(us: $us, metric: $metric)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Measures &&
            (identical(other.us, us) ||
                const DeepCollectionEquality().equals(other.us, us)) &&
            (identical(other.metric, metric) ||
                const DeepCollectionEquality().equals(other.metric, metric)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(us) ^
      const DeepCollectionEquality().hash(metric);

  @JsonKey(ignore: true)
  @override
  _$MeasuresCopyWith<_Measures> get copyWith =>
      __$MeasuresCopyWithImpl<_Measures>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MeasuresToJson(this);
  }
}

abstract class _Measures implements Measures {
  const factory _Measures({required Metric us, required Metric metric}) =
      _$_Measures;

  factory _Measures.fromJson(Map<String, dynamic> json) = _$_Measures.fromJson;

  @override
  Metric get us => throw _privateConstructorUsedError;
  @override
  Metric get metric => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MeasuresCopyWith<_Measures> get copyWith =>
      throw _privateConstructorUsedError;
}

Metric _$MetricFromJson(Map<String, dynamic> json) {
  return _Metric.fromJson(json);
}

/// @nodoc
class _$MetricTearOff {
  const _$MetricTearOff();

  _Metric call(
      {required double amount,
      required String unitShort,
      required String unitLong}) {
    return _Metric(
      amount: amount,
      unitShort: unitShort,
      unitLong: unitLong,
    );
  }

  Metric fromJson(Map<String, Object> json) {
    return Metric.fromJson(json);
  }
}

/// @nodoc
const $Metric = _$MetricTearOff();

/// @nodoc
mixin _$Metric {
  double get amount => throw _privateConstructorUsedError;
  String get unitShort => throw _privateConstructorUsedError;
  String get unitLong => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MetricCopyWith<Metric> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetricCopyWith<$Res> {
  factory $MetricCopyWith(Metric value, $Res Function(Metric) then) =
      _$MetricCopyWithImpl<$Res>;
  $Res call({double amount, String unitShort, String unitLong});
}

/// @nodoc
class _$MetricCopyWithImpl<$Res> implements $MetricCopyWith<$Res> {
  _$MetricCopyWithImpl(this._value, this._then);

  final Metric _value;
  // ignore: unused_field
  final $Res Function(Metric) _then;

  @override
  $Res call({
    Object? amount = freezed,
    Object? unitShort = freezed,
    Object? unitLong = freezed,
  }) {
    return _then(_value.copyWith(
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      unitShort: unitShort == freezed
          ? _value.unitShort
          : unitShort // ignore: cast_nullable_to_non_nullable
              as String,
      unitLong: unitLong == freezed
          ? _value.unitLong
          : unitLong // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$MetricCopyWith<$Res> implements $MetricCopyWith<$Res> {
  factory _$MetricCopyWith(_Metric value, $Res Function(_Metric) then) =
      __$MetricCopyWithImpl<$Res>;
  @override
  $Res call({double amount, String unitShort, String unitLong});
}

/// @nodoc
class __$MetricCopyWithImpl<$Res> extends _$MetricCopyWithImpl<$Res>
    implements _$MetricCopyWith<$Res> {
  __$MetricCopyWithImpl(_Metric _value, $Res Function(_Metric) _then)
      : super(_value, (v) => _then(v as _Metric));

  @override
  _Metric get _value => super._value as _Metric;

  @override
  $Res call({
    Object? amount = freezed,
    Object? unitShort = freezed,
    Object? unitLong = freezed,
  }) {
    return _then(_Metric(
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      unitShort: unitShort == freezed
          ? _value.unitShort
          : unitShort // ignore: cast_nullable_to_non_nullable
              as String,
      unitLong: unitLong == freezed
          ? _value.unitLong
          : unitLong // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Metric implements _Metric {
  const _$_Metric(
      {required this.amount, required this.unitShort, required this.unitLong});

  factory _$_Metric.fromJson(Map<String, dynamic> json) =>
      _$$_MetricFromJson(json);

  @override
  final double amount;
  @override
  final String unitShort;
  @override
  final String unitLong;

  @override
  String toString() {
    return 'Metric(amount: $amount, unitShort: $unitShort, unitLong: $unitLong)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Metric &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.unitShort, unitShort) ||
                const DeepCollectionEquality()
                    .equals(other.unitShort, unitShort)) &&
            (identical(other.unitLong, unitLong) ||
                const DeepCollectionEquality()
                    .equals(other.unitLong, unitLong)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(unitShort) ^
      const DeepCollectionEquality().hash(unitLong);

  @JsonKey(ignore: true)
  @override
  _$MetricCopyWith<_Metric> get copyWith =>
      __$MetricCopyWithImpl<_Metric>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MetricToJson(this);
  }
}

abstract class _Metric implements Metric {
  const factory _Metric(
      {required double amount,
      required String unitShort,
      required String unitLong}) = _$_Metric;

  factory _Metric.fromJson(Map<String, dynamic> json) = _$_Metric.fromJson;

  @override
  double get amount => throw _privateConstructorUsedError;
  @override
  String get unitShort => throw _privateConstructorUsedError;
  @override
  String get unitLong => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MetricCopyWith<_Metric> get copyWith => throw _privateConstructorUsedError;
}
