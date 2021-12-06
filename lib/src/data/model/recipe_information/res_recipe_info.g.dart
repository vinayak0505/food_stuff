// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'res_recipe_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ResRecipeInfo _$$_ResRecipeInfoFromJson(Map json) => _$_ResRecipeInfo(
      vegetarian: json['vegetarian'] as bool,
      vegan: json['vegan'] as bool,
      glutenFree: json['glutenFree'] as bool,
      dairyFree: json['dairyFree'] as bool,
      veryHealthy: json['veryHealthy'] as bool,
      cheap: json['cheap'] as bool,
      veryPopular: json['veryPopular'] as bool,
      sustainable: json['sustainable'] as bool,
      weightWatcherSmartPoints: json['weightWatcherSmartPoints'] as int,
      gaps: json['gaps'] as String,
      lowFodmap: json['lowFodmap'] as bool,
      aggregateLikes: json['aggregateLikes'] as int,
      healthScore: (json['healthScore'] as num).toDouble(),
      creditsText: json['creditsText'] as String,
      license: json['license'] as String,
      sourceName: json['sourceName'] as String,
      extendedIngredients: (json['extendedIngredients'] as List<dynamic>)
          .map((e) =>
              ExtendedIngredient.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
      id: json['id'] as int,
      title: json['title'] as String,
      readyInMinutes: json['readyInMinutes'] as int,
      servings: json['servings'] as int,
      sourceUrl: json['sourceUrl'] as String,
      image: json['image'] as String,
      imageType: json['imageType'] as String,
      summary: json['summary'] as String,
      cuisines: json['cuisines'] as List<dynamic>,
      dishTypes:
          (json['dishTypes'] as List<dynamic>).map((e) => e as String).toList(),
      diets: (json['diets'] as List<dynamic>).map((e) => e as String).toList(),
      occasions: json['occasions'] as List<dynamic>,
      instructions: json['instructions'] as String,
      analyzedInstructions: json['analyzedInstructions'] as List<dynamic>,
      originalId: json['originalId'],
      spoonacularSourceUrl: json['spoonacularSourceUrl'] as String,
    );

Map<String, dynamic> _$$_ResRecipeInfoToJson(_$_ResRecipeInfo instance) =>
    <String, dynamic>{
      'vegetarian': instance.vegetarian,
      'vegan': instance.vegan,
      'glutenFree': instance.glutenFree,
      'dairyFree': instance.dairyFree,
      'veryHealthy': instance.veryHealthy,
      'cheap': instance.cheap,
      'veryPopular': instance.veryPopular,
      'sustainable': instance.sustainable,
      'weightWatcherSmartPoints': instance.weightWatcherSmartPoints,
      'gaps': instance.gaps,
      'lowFodmap': instance.lowFodmap,
      'aggregateLikes': instance.aggregateLikes,
      'healthScore': instance.healthScore,
      'creditsText': instance.creditsText,
      'license': instance.license,
      'sourceName': instance.sourceName,
      'extendedIngredients': instance.extendedIngredients,
      'id': instance.id,
      'title': instance.title,
      'readyInMinutes': instance.readyInMinutes,
      'servings': instance.servings,
      'sourceUrl': instance.sourceUrl,
      'image': instance.image,
      'imageType': instance.imageType,
      'summary': instance.summary,
      'cuisines': instance.cuisines,
      'dishTypes': instance.dishTypes,
      'diets': instance.diets,
      'occasions': instance.occasions,
      'instructions': instance.instructions,
      'analyzedInstructions': instance.analyzedInstructions,
      'originalId': instance.originalId,
      'spoonacularSourceUrl': instance.spoonacularSourceUrl,
    };

_$_ExtendedIngredient _$$_ExtendedIngredientFromJson(Map json) =>
    _$_ExtendedIngredient(
      id: json['id'] as int,
      aisle: json['aisle'] as String,
      image: json['image'] as String,
      consistency: json['consistency'] as String,
      name: json['name'] as String,
      nameClean: json['nameClean'] as String,
      original: json['original'] as String,
      originalString: json['originalString'] as String,
      originalName: json['originalName'] as String,
      amount: (json['amount'] as num).toDouble(),
      unit: json['unit'] as String,
      meta: (json['meta'] as List<dynamic>).map((e) => e as String).toList(),
      metaInformation: (json['metaInformation'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_ExtendedIngredientToJson(
        _$_ExtendedIngredient instance) =>
    <String, dynamic>{
      'id': instance.id,
      'aisle': instance.aisle,
      'image': instance.image,
      'consistency': instance.consistency,
      'name': instance.name,
      'nameClean': instance.nameClean,
      'original': instance.original,
      'originalString': instance.originalString,
      'originalName': instance.originalName,
      'amount': instance.amount,
      'unit': instance.unit,
      'meta': instance.meta,
      'metaInformation': instance.metaInformation,
    };
