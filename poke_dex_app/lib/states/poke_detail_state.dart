import 'package:flutter/foundation.dart';
import 'package:poke_dex_app/model/pokemon_info.dart';
import 'package:poke_dex_app/model/pokemon_item.dart';
import 'package:poke_dex_app/states/error_state.dart';
import 'package:poke_dex_app/states/loading_state.dart';

@immutable
class PokeDetailState {
  const PokeDetailState({
    this.selectPokemon,
    this.pokemonInfo,
    this.loadingState = const LoadingState(),
    this.errorState = const ErrorState(),
  });

  final PokemonItem? selectPokemon;
  final PokemonInfo? pokemonInfo;
  final LoadingState loadingState;
  final ErrorState errorState;

  @override
  int get hashCode =>
      selectPokemon.hashCode ^
      pokemonInfo.hashCode ^
      loadingState.hashCode ^
      errorState.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PokeDetailState &&
          runtimeType == other.runtimeType &&
          selectPokemon == other.selectPokemon &&
          pokemonInfo == other.pokemonInfo &&
          loadingState == other.loadingState &&
          errorState == other.errorState;

  @override
  String toString() => 'PokeDetailState{selectPokemon: $selectPokemon, '
      'pokemonInfo: $pokemonInfo, '
      'loadingState: $loadingState, '
      'errorState: $errorState}';
}
