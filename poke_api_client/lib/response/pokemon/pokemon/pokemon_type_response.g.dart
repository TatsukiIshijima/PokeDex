// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_type_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PokemonTypeResponse _$_$_PokemonTypeResponseFromJson(
    Map<String, dynamic> json) {
  return _$_PokemonTypeResponse(
    json['slot'] as int,
    NamedApiResource.fromJson(json['type'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_PokemonTypeResponseToJson(
        _$_PokemonTypeResponse instance) =>
    <String, dynamic>{
      'slot': instance.slot,
      'type': instance.type,
    };
