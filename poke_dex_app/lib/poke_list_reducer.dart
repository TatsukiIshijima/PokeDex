// Reducer (oldState, action) => newState
// Reducer もツリー構造らしい
// ある状態に対してのactionの具体的処理を書く場所？？
// State のプロパティへの変更もここで行う？？
// ただし、immutable の原則から外れるっぽいので copyWith などで行うサンプルが多い
// copyWith を使用する理由は新しいインスタンスを生成させて純粋関数にするためらしい
// ＊純粋関数とは「引数が同じ場合、常に同じ返り値になる」、「副作用が発生しない＝関数内で影響が閉じている？」関数

// 状態と行動を定義する部分がQ学習に似ているな...

// final pokeListReducer = combineReducers<PokeListState>([
//   TypedReducer<PokeListState, PokeListEmptyAction>(_onEmpty),
//   TypedReducer<PokeListState, PokeListLoadingAction>(_onLoad),
//   TypedReducer<PokeListState, PokeListErrorAction>(_onError),
//   TypedReducer<PokeListState, PokeListShowAction>(_onFetched),
// ]);
//
// PokeListState _onEmpty(PokeListState state, PokeListEmptyAction action) =>
//     PokeListEmpty();
//
// PokeListState _onLoad(PokeListState state, PokeListLoadingAction action) =>
//     PokeListLoading();
//
// PokeListState _onError(PokeListState state, PokeListErrorAction action) =>
//     PokeListError(action.apiError);
//
// PokeListState _onFetched(PokeListState state, PokeListShowAction action) =>
//     action.result.results.isEmpty
//         ? PokeListEmpty()
//         : PokeListShow(action.result);

import 'package:poke_dex_app/poke_list_actions.dart';
import 'package:poke_dex_app/poke_list_state.dart';
import 'package:poke_dex_app/reducers/error_reducer.dart';
import 'package:poke_dex_app/reducers/loading_reducer.dart';
import 'package:redux/redux.dart';

// 3. reducer 定義

final pokeListReducer = combineReducers<PokeListState>([
  TypedReducer<PokeListState, FetchPokeListAction>(_fetchPokeListReducer),
  TypedReducer<PokeListState, ShowPokeListAction>(_showPokeListReducer),
  TypedReducer<PokeListState, ShowPokeApiErrorAction>(_showPokeApiErrorReducer),
]);

PokeListState _fetchPokeListReducer(
        PokeListState oldState, FetchPokeListAction action) =>
    PokeListState(
      offset: action.offset,
      limit: action.limit,
      pokemonList: oldState.pokemonList,
      loadingState: loadingReducer(
        oldState.loadingState,
        action,
      ),
    );

PokeListState _showPokeListReducer(
        PokeListState oldState, ShowPokeListAction action) =>
    PokeListState(
      offset: oldState.offset,
      limit: oldState.limit,
      pokemonList: action.pokemonList,
      loadingState: loadingReducer(
        oldState.loadingState,
        action,
      ),
    );

PokeListState _showPokeApiErrorReducer(
        PokeListState oldState, ShowPokeApiErrorAction action) =>
    PokeListState(
      offset: oldState.offset,
      limit: oldState.limit,
      pokemonList: oldState.pokemonList,
      loadingState: loadingReducer(
        oldState.loadingState,
        action,
      ),
      errorState: errorReducer(
        oldState.errorState,
        action,
      ),
    );
