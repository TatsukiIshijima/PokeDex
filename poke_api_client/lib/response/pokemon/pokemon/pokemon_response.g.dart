// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PokemonResponse _$_$_PokemonResponseFromJson(Map<String, dynamic> json) {
  return _$_PokemonResponse(
    json['id'] as int,
    json['name'] as String,
    json['height'] as int,
    json['weight'] as int,
    (json['types'] as List<dynamic>)
        .map((e) => PokemonTypeResponse.fromJson(e as Map<String, dynamic>))
        .toList(),
    NamedApiResource.fromJson(json['species'] as Map<String, dynamic>),
    PokemonSpriteResponse.fromJson(json['sprites'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_PokemonResponseToJson(_$_PokemonResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'height': instance.height,
      'weight': instance.weight,
      'types': instance.types,
      'species': instance.species,
      'sprites': instance.sprites,
    };
