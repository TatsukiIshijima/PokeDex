import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poke_api_client/response/common/named_api_resource.dart';

part 'pokemon_list_response.freezed.dart';
part 'pokemon_list_response.g.dart';

@freezed
class PokemonListResponse with _$PokemonListResponse {
  const factory PokemonListResponse(
    @JsonKey(name: 'count') int count,
    @JsonKey(name: 'next') String? next,
    @JsonKey(name: 'previous') String? previous,
    @JsonKey(name: 'results') List<NamedApiResource> results,
  ) = _PokemonListResponse;

  factory PokemonListResponse.fromJson(Map<String, dynamic> json) =>
      _$PokemonListResponseFromJson(json);
}
