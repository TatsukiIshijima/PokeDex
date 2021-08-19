// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'species_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SpeciesResponse _$_$_SpeciesResponseFromJson(Map<String, dynamic> json) {
  return _$_SpeciesResponse(
    json['id'] as int,
    json['name'] as String,
    (json['names'] as List<dynamic>)
        .map((e) => Name.fromJson(e as Map<String, dynamic>))
        .toList(),
    (json['flavor_text_entries'] as List<dynamic>)
        .map((e) => FlavorText.fromJson(e as Map<String, dynamic>))
        .toList(),
    (json['form_descriptions'] as List<dynamic>)
        .map((e) => Description.fromJson(e as Map<String, dynamic>))
        .toList(),
    (json['genera'] as List<dynamic>)
        .map((e) => GenusResponse.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_SpeciesResponseToJson(_$_SpeciesResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'names': instance.names,
      'flavor_text_entries': instance.flavorTextEntries,
      'form_descriptions': instance.formDescriptions,
      'genera': instance.genera,
    };
