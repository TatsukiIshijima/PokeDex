import 'package:flutter/material.dart';
import 'package:poke_dex_app/states/poke_detail_state.dart';
import 'package:poke_dex_app/states/poke_list_state.dart';

// 1. state 定義
// state は Reducer で更新される
// initialState が必要なので基本はデフォルトの初期値を定義しておく

@immutable
class PokeDexAppState {
  const PokeDexAppState({
    this.pokeListState = const PokeListState(),
    this.pokeDetailState = const PokeDetailState(),
  });

  final PokeListState pokeListState;
  final PokeDetailState pokeDetailState;

  @override
  int get hashCode => pokeListState.hashCode ^ pokeDetailState.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PokeDexAppState &&
          runtimeType == other.runtimeType &&
          pokeListState == other.pokeListState &&
          pokeDetailState == other.pokeDetailState;

  @override
  String toString() =>
      'PokeDexAppState{pokeListState: $pokeListState, pokeDetailState: $pokeDetailState}';
}
