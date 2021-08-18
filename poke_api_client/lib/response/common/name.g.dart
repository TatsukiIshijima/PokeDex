// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'name.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Name _$_$_NameFromJson(Map<String, dynamic> json) {
  return _$_Name(
    json['name'] as String,
    NamedApiResource.fromJson(json['language'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_NameToJson(_$_Name instance) => <String, dynamic>{
      'name': instance.name,
      'language': instance.language,
    };
