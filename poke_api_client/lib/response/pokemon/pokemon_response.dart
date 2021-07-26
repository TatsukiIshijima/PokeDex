import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_response.freezed.dart';
part 'pokemon_response.g.dart';

@freezed
class PokemonResponse with _$PokemonResponse {
  const factory PokemonResponse(@JsonKey(name: 'name') String name,
      @JsonKey(name: 'url') String url) = _PokemonResponse;

  const PokemonResponse._();

  factory PokemonResponse.fromJson(Map<String, dynamic> json) =>
      _$PokemonResponseFromJson(json);

  String getImageUrl() {
    final elements = url.split(RegExp(r'/'));
    final index = elements
      ..removeRange(0, elements.length - 2)
      ..last;
    return 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/${index.join()}.png';
  }
}
