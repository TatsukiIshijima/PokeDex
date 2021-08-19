import 'package:flutter/material.dart';
import 'package:poke_dex_app/model/pokemon_item.dart';
import 'package:poke_dex_app/states/error_state.dart';
import 'package:poke_dex_app/states/loading_state.dart';

@immutable
class PokeListState {
  const PokeListState({
    this.offset = 0,
    this.limit = 20,
    this.pokemonList = const [],
    this.loadingState = const LoadingState(),
    this.errorState = const ErrorState(),
  });

  final int offset;
  final int limit;
  final List<PokemonItem> pokemonList;
  final LoadingState loadingState;
  final ErrorState errorState;

  @override
  int get hashCode =>
      offset.hashCode ^
      limit.hashCode ^
      pokemonList.hashCode ^
      loadingState.hashCode ^
      errorState.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PokeListState &&
          runtimeType == other.runtimeType &&
          offset == other.offset &&
          limit == other.limit &&
          pokemonList == other.pokemonList &&
          loadingState == other.loadingState &&
          errorState == other.errorState;

  @override
  String toString() => 'PokeListState{offset: $offset, '
      'limit: $limit, '
      'pokemonList: $pokemonList, '
      'loadingState: $loadingState, '
      'errorState: $errorState}';
}
