// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flavor_text.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FlavorText _$_$_FlavorTextFromJson(Map<String, dynamic> json) {
  return _$_FlavorText(
    json['flavor_text'] as String,
    NamedApiResource.fromJson(json['language'] as Map<String, dynamic>),
    NamedApiResource.fromJson(json['version'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_FlavorTextToJson(_$_FlavorText instance) =>
    <String, dynamic>{
      'flavor_text': instance.flavorText,
      'language': instance.language,
      'version': instance.version,
    };
