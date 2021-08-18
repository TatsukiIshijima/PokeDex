// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'description.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Description _$_$_DescriptionFromJson(Map<String, dynamic> json) {
  return _$_Description(
    json['description'] as String,
    NamedApiResource.fromJson(json['language'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_DescriptionToJson(_$_Description instance) =>
    <String, dynamic>{
      'description': instance.description,
      'language': instance.language,
    };
