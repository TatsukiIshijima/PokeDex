import 'package:flutter/foundation.dart';
import 'package:poke_api_client/response/pokemon/pokemon_response.dart';

@immutable
class PokeDetailState {
  const PokeDetailState({
    this.pokemon,
  });

  final PokemonResponse? pokemon;

  @override
  int get hashCode => pokemon.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PokeDetailState &&
          runtimeType == other.runtimeType &&
          pokemon == other.pokemon;

  @override
  String toString() => 'PokeDetailState{pokemon: $pokemon}';
}
