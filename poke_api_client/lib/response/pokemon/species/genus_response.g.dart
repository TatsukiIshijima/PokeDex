// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'genus_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GenusResponse _$_$_GenusResponseFromJson(Map<String, dynamic> json) {
  return _$_GenusResponse(
    json['genus'] as String,
    NamedApiResource.fromJson(json['language'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_GenusResponseToJson(_$_GenusResponse instance) =>
    <String, dynamic>{
      'genus': instance.genus,
      'language': instance.language,
    };
