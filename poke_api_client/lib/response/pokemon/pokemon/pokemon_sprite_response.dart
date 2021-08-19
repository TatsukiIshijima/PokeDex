import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poke_api_client/response/pokemon/pokemon/pokemon_other_response.dart';

part 'pokemon_sprite_response.freezed.dart';
part 'pokemon_sprite_response.g.dart';

@freezed
class PokemonSpriteResponse with _$PokemonSpriteResponse {
  const factory PokemonSpriteResponse(
    @JsonKey(name: 'other') PokemonOtherResponse other,
  ) = _PokemonSpriteResponse;

  factory PokemonSpriteResponse.fromJson(Map<String, dynamic> json) =>
      _$PokemonSpriteResponseFromJson(json);
}
