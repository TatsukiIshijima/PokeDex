import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poke_api_client/response/common/named_api_resource.dart';
import 'package:poke_api_client/response/pokemon/pokemon/pokemon_sprite_response.dart';
import 'package:poke_api_client/response/pokemon/pokemon/pokemon_type_response.dart';

part 'pokemon_response.freezed.dart';
part 'pokemon_response.g.dart';

@freezed
class PokemonResponse with _$PokemonResponse {
  const factory PokemonResponse(
    @JsonKey(name: 'id') int id,
    @JsonKey(name: 'name') String name,
    @JsonKey(name: 'height') int height,
    @JsonKey(name: 'weight') int weight,
    @JsonKey(name: 'types') List<PokemonTypeResponse> types,
    @JsonKey(name: 'species') NamedApiResource species,
    @JsonKey(name: 'sprites') PokemonSpriteResponse sprites,
  ) = _PokemonResponse;

  factory PokemonResponse.fromJson(Map<String, dynamic> json) =>
      _$PokemonResponseFromJson(json);
}
