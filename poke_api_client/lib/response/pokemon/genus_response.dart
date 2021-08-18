import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poke_api_client/response/common/named_api_resource.dart';

part 'genus_response.freezed.dart';
part 'genus_response.g.dart';

@freezed
class GenusResponse with _$GenusResponse {
  const factory GenusResponse(
    @JsonKey(name: 'genus') String genus,
    @JsonKey(name: 'language') NamedApiResource language,
  ) = _GenusResponse;

  factory GenusResponse.fromJson(Map<String, dynamic> json) =>
      _$GenusResponseFromJson(json);
}
