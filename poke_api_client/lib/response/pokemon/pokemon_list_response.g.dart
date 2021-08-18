// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PokemonListResponse _$_$_PokemonListResponseFromJson(
    Map<String, dynamic> json) {
  return _$_PokemonListResponse(
    json['count'] as int,
    json['next'] as String?,
    json['previous'] as String?,
    (json['results'] as List<dynamic>)
        .map((e) => NamedApiResource.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_PokemonListResponseToJson(
        _$_PokemonListResponse instance) =>
    <String, dynamic>{
      'count': instance.count,
      'next': instance.next,
      'previous': instance.previous,
      'results': instance.results,
    };
