import 'package:poke_dex_app/actions/poke_list_actions.dart';
import 'package:poke_dex_app/reducers/error_reducer.dart';
import 'package:poke_dex_app/reducers/loading_reducer.dart';
import 'package:poke_dex_app/states/poke_list_state.dart';
import 'package:redux/redux.dart';

// 3. reducer 定義
// Reducer (oldState, action) => newState

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
