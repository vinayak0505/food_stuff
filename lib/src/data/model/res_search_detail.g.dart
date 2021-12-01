// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'res_search_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ResSearchDetail _$$_ResSearchDetailFromJson(Map json) => _$_ResSearchDetail(
      vegetarian: json['vegetarian'] as bool?,
      vegan: json['vegan'] as bool?,
      glutenFree: json['glutenFree'] as bool?,
      dairyFree: json['dairyFree'] as bool?,
      veryHealthy: json['veryHealthy'] as bool?,
      cheap: json['cheap'] as bool?,
      veryPopular: json['veryPopular'] as bool?,
      sustainable: json['sustainable'] as bool?,
      weightWatcherSmartPoints: json['weightWatcherSmartPoints'] as int?,
      gaps: json['gaps'] as String?,
      lowFodmap: json['lowFodmap'] as bool?,
      aggregateLikes: json['aggregateLikes'] as int?,
      spoonacularScore: (json['spoonacularScore'] as num?)?.toDouble(),
      healthScore: (json['healthScore'] as num?)?.toDouble(),
      creditsText: json['creditsText'] as String?,
      license: json['license'] as String?,
      sourceName: json['sourceName'] as String?,
      pricePerServing: (json['pricePerServing'] as num?)?.toDouble(),
      extendedIngredients: (json['extendedIngredients'] as List<dynamic>)
          .map((e) => ExtendedIngredient.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
      id: json['id'] as int?,
      title: json['title'] as String?,
      readyInMinutes: json['readyInMinutes'] as int?,
      servings: json['servings'] as int?,
      sourceUrl: json['sourceUrl'] as String?,
      image: json['image'] as String?,
      imageType: json['imageType'] as String?,
      summary: json['summary'] as String?,
      cuisines: json['cuisines'] as List<dynamic>,
      dishTypes: (json['dishTypes'] as List<dynamic>).map((e) => e as String).toList(),
      diets: (json['diets'] as List<dynamic>).map((e) => e as String).toList(),
      occasions: json['occasions'] as List<dynamic>,
      winePairing: json['winePairing'] == null
          ? null
          : WinePairing.fromJson(Map<String, dynamic>.from(json['winePairing'] as Map)),
      instructions: json['instructions'] as String?,
      analyzedInstructions: json['analyzedInstructions'] as List<dynamic>,
      originalId: json['originalId'],
      spoonacularSourceUrl: json['spoonacularSourceUrl'] as String?,
    );

Map<String, dynamic> _$$_ResSearchDetailToJson(_$_ResSearchDetail instance) => <String, dynamic>{
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
      'spoonacularScore': instance.spoonacularScore,
      'healthScore': instance.healthScore,
      'creditsText': instance.creditsText,
      'license': instance.license,
      'sourceName': instance.sourceName,
      'pricePerServing': instance.pricePerServing,
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
      'winePairing': instance.winePairing,
      'instructions': instance.instructions,
      'analyzedInstructions': instance.analyzedInstructions,
      'originalId': instance.originalId,
      'spoonacularSourceUrl': instance.spoonacularSourceUrl,
    };

_$_ExtendedIngredient _$$_ExtendedIngredientFromJson(Map json) => _$_ExtendedIngredient(
      id: json['id'] as int?,
      aisle: json['aisle'] as String?,
      image: json['image'] as String?,
      consistency: json['consistency'] as String?,
      name: json['name'] as String?,
      nameClean: json['nameClean'] as String?,
      original: json['original'] as String?,
      originalString: json['originalString'] as String?,
      originalName: json['originalName'] as String?,
      amount: (json['amount'] as num?)?.toDouble(),
      unit: json['unit'] as String?,
      meta: (json['meta'] as List<dynamic>).map((e) => e as String).toList(),
      metaInformation: (json['metaInformation'] as List<dynamic>).map((e) => e as String).toList(),
      measures: Measures.fromJson(Map<String, dynamic>.from(json['measures'] as Map)),
    );

Map<String, dynamic> _$$_ExtendedIngredientToJson(_$_ExtendedIngredient instance) => <String, dynamic>{
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
      'measures': instance.measures,
    };

_$_Measures _$$_MeasuresFromJson(Map json) => _$_Measures(
      us: Metric.fromJson(Map<String, dynamic>.from(json['us'] as Map)),
      metric: Metric.fromJson(Map<String, dynamic>.from(json['metric'] as Map)),
    );

Map<String, dynamic> _$$_MeasuresToJson(_$_Measures instance) => <String, dynamic>{
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

_$_WinePairing _$$_WinePairingFromJson(Map json) => _$_WinePairing();

Map<String, dynamic> _$$_WinePairingToJson(_$_WinePairing instance) => <String, dynamic>{};
