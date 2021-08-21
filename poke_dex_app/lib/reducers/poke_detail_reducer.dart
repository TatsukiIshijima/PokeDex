import 'package:poke_dex_app/actions/poke_detail_actions.dart';
import 'package:poke_dex_app/actions/poke_list_actions.dart';
import 'package:poke_dex_app/reducers/error_reducer.dart';
import 'package:poke_dex_app/reducers/loading_reducer.dart';
import 'package:poke_dex_app/states/poke_detail_state.dart';
import 'package:redux/redux.dart';

final pokeDetailReducer = combineReducers<PokeDetailState>([
  TypedReducer<PokeDetailState, SelectPokeAction>(_selectPokeReducer),
  TypedReducer<PokeDetailState, DeselectPokeAction>(_deselectPokeReducer),
  TypedReducer<PokeDetailState, FetchPokeDetailAction>(_fetchPokeDetailReducer),
  TypedReducer<PokeDetailState, ShowPokeDetailAction>(_showPokeDetailReducer),
  TypedReducer<PokeDetailState, ShowPokeApiErrorAction>(
      _showPokeApiErrorReducer),
]);

PokeDetailState _selectPokeReducer(
        PokeDetailState oldState, SelectPokeAction action) =>
    PokeDetailState(selectPokemon: action.pokemon);

PokeDetailState _deselectPokeReducer(
        PokeDetailState oldState, DeselectPokeAction action) =>
    const PokeDetailState(
      selectPokemon: null,
      pokemonInfo: null,
    );

PokeDetailState _fetchPokeDetailReducer(
        PokeDetailState oldState, FetchPokeDetailAction action) =>
    PokeDetailState(
      selectPokemon: oldState.selectPokemon,
      pokemonInfo: oldState.pokemonInfo,
      loadingState: loadingReducer(
        oldState.loadingState,
        action,
      ),
    );

PokeDetailState _showPokeDetailReducer(
        PokeDetailState oldState, ShowPokeDetailAction action) =>
    PokeDetailState(
      selectPokemon: oldState.selectPokemon,
      pokemonInfo: action.pokemonInfo,
      loadingState: loadingReducer(
        oldState.loadingState,
        action,
      ),
    );

PokeDetailState _showPokeApiErrorReducer(
        PokeDetailState oldState, ShowPokeApiErrorAction action) =>
    PokeDetailState(
      selectPokemon: oldState.selectPokemon,
      pokemonInfo: oldState.pokemonInfo,
      loadingState: loadingReducer(
        oldState.loadingState,
        action,
      ),
      errorState: errorReducer(
        oldState.errorState,
        action,
      ),
    );
