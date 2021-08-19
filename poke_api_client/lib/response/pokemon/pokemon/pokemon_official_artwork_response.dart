import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_official_artwork_response.freezed.dart';
part 'pokemon_official_artwork_response.g.dart';

@freezed
class PokemonOfficialArtworkResponse with _$PokemonOfficialArtworkResponse {
  const factory PokemonOfficialArtworkResponse(
    @JsonKey(name: 'front_default') String frontDefault,
  ) = _PokemonOfficialArtworkResponse;

  factory PokemonOfficialArtworkResponse.fromJson(Map<String, dynamic> json) =>
      _$PokemonOfficialArtworkResponseFromJson(json);
}
