import 'package:flutter/material.dart';
import 'package:poke_api_client/response/pokemon/pokemon_response.dart';
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
  final List<PokemonResponse> pokemonList;
  final LoadingState loadingState;
  final ErrorState errorState;
}
