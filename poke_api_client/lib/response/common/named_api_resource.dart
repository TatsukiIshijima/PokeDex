import 'package:freezed_annotation/freezed_annotation.dart';

part 'named_api_resource.freezed.dart';
part 'named_api_resource.g.dart';

@freezed
class NamedApiResource with _$NamedApiResource {
  const factory NamedApiResource(
    @JsonKey(name: 'name') String name,
    @JsonKey(name: 'url') String url,
  ) = _NamedApiResource;

  const NamedApiResource._();

  factory NamedApiResource.fromJson(Map<String, dynamic> json) =>
      _$NamedApiResourceFromJson(json);
}
