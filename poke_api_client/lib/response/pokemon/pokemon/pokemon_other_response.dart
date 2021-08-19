import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poke_api_client/response/pokemon/pokemon/pokemon_official_artwork_response.dart';

part 'pokemon_other_response.freezed.dart';
part 'pokemon_other_response.g.dart';

@freezed
class PokemonOtherResponse with _$PokemonOtherResponse {
  const factory PokemonOtherResponse(
    @JsonKey(name: 'official-artwork')
        PokemonOfficialArtworkResponse officialArtwork,
  ) = _PokemonOtherResponse;

  factory PokemonOtherResponse.fromJson(Map<String, dynamic> json) =>
      _$PokemonOtherResponseFromJson(json);
}
