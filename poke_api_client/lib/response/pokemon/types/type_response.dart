import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poke_api_client/response/common/name.dart';

part 'type_response.freezed.dart';
part 'type_response.g.dart';

@freezed
class TypeResponse with _$TypeResponse {
  const factory TypeResponse(
    @JsonKey(name: 'id') int id,
    @JsonKey(name: 'name') String name,
    @JsonKey(name: 'names') List<Name> names,
  ) = _TypeResponse;

  factory TypeResponse.fromJson(Map<String, dynamic> json) =>
      _$TypeResponseFromJson(json);
}
