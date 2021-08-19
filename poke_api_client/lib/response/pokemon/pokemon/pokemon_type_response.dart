import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poke_api_client/response/common/named_api_resource.dart';

part 'pokemon_type_response.freezed.dart';
part 'pokemon_type_response.g.dart';

@freezed
class PokemonTypeResponse with _$PokemonTypeResponse {
  const factory PokemonTypeResponse(
    @JsonKey(name: 'slot') int slot,
    @JsonKey(name: 'type') NamedApiResource type,
  ) = _PokemonTypeResponse;

  factory PokemonTypeResponse.fromJson(Map<String, dynamic> json) =>
      _$PokemonTypeResponseFromJson(json);
}
