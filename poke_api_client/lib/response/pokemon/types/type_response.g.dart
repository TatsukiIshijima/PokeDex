// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'type_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TypeResponse _$_$_TypeResponseFromJson(Map<String, dynamic> json) {
  return _$_TypeResponse(
    json['id'] as int,
    json['name'] as String,
    (json['names'] as List<dynamic>)
        .map((e) => Name.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_TypeResponseToJson(_$_TypeResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'names': instance.names,
    };
