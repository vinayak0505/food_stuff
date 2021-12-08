// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'random_recipe.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RandomRecipe _$$_RandomRecipeFromJson(Map json) => _$_RandomRecipe(
      recipes: (json['recipes'] as List<dynamic>)
          .map((e) => Recipe.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
    );

Map<String, dynamic> _$$_RandomRecipeToJson(_$_RandomRecipe instance) =>
    <String, dynamic>{
      'recipes': instance.recipes,
    };

_$_Recipe _$$_RecipeFromJson(Map json) => _$_Recipe(
      vegetarian: json['vegetarian'] as bool,
      vegan: json['vegan'] as bool,
      glutenFree: json['glutenFree'] as bool,
      dairyFree: json['dairyFree'] as bool,
      veryHealthy: json['veryHealthy'] as bool,
      pricePerServing: (json['pricePerServing'] as num).toDouble(),
      id: json['id'] as int,
      title: json['title'] as String?,
      readyInMinutes: json['readyInMinutes'] as int,
      servings: json['servings'] as int,
      sourceUrl: json['sourceUrl'] as String,
      image: json['image'] as String?,
      summary: json['summary'] as String,
      cuisines:
          (json['cuisines'] as List<dynamic>).map((e) => e as String).toList(),
      dishTypes:
          (json['dishTypes'] as List<dynamic>).map((e) => e as String).toList(),
      diets: (json['diets'] as List<dynamic>).map((e) => e as String).toList(),
      occasions:
          (json['occasions'] as List<dynamic>).map((e) => e as String).toList(),
      instructions: json['instructions'] as String,
      cookingMinutes: json['cookingMinutes'] as int?,
    );

Map<String, dynamic> _$$_RecipeToJson(_$_Recipe instance) => <String, dynamic>{
      'vegetarian': instance.vegetarian,
      'vegan': instance.vegan,
      'glutenFree': instance.glutenFree,
      'dairyFree': instance.dairyFree,
      'veryHealthy': instance.veryHealthy,
      'pricePerServing': instance.pricePerServing,
      'id': instance.id,
      'title': instance.title,
      'readyInMinutes': instance.readyInMinutes,
      'servings': instance.servings,
      'sourceUrl': instance.sourceUrl,
      'image': instance.image,
      'summary': instance.summary,
      'cuisines': instance.cuisines,
      'dishTypes': instance.dishTypes,
      'diets': instance.diets,
      'occasions': instance.occasions,
      'instructions': instance.instructions,
      'cookingMinutes': instance.cookingMinutes,
    };

_$_Measures _$$_MeasuresFromJson(Map json) => _$_Measures(
      us: Metric.fromJson(Map<String, dynamic>.from(json['us'] as Map)),
      metric: Metric.fromJson(Map<String, dynamic>.from(json['metric'] as Map)),
    );

Map<String, dynamic> _$$_MeasuresToJson(_$_Measures instance) =>
    <String, dynamic>{
      'us': instance.us,
      'metric': instance.metric,
    };

_$_Metric _$$_MetricFromJson(Map json) => _$_Metric(
      amount: (json['amount'] as num).toDouble(),
      unitShort: json['unitShort'] as String,
      unitLong: json['unitLong'] as String,
    );

Map<String, dynamic> _$$_MetricToJson(_$_Metric instance) => <String, dynamic>{
      'amount': instance.amount,
      'unitShort': instance.unitShort,
      'unitLong': instance.unitLong,
    };
