import 'package:flutter/material.dart';
import 'package:poke_dex_app/states/poke_list_state.dart';

// 1. state 定義
// state は Reducer で更新される
// initialState が必要なので基本はデフォルトの初期値を定義しておく

@immutable
class PokeDexAppState {
  const PokeDexAppState({
    this.pokeListState = const PokeListState(),
  });

  final PokeListState pokeListState;
}
