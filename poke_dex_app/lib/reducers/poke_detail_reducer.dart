import 'package:poke_dex_app/actions/poke_detail_actions.dart';
import 'package:poke_dex_app/states/poke_detail_state.dart';
import 'package:redux/redux.dart';

final pokeDetailReducer = combineReducers<PokeDetailState>([
  TypedReducer<PokeDetailState, SelectPokeAction>(_selectPokeReducer),
  TypedReducer<PokeDetailState, DeselectPokeAction>(_deselectPokeReducer),
]);

PokeDetailState _selectPokeReducer(
        PokeDetailState oldState, SelectPokeAction action) =>
    PokeDetailState(pokemon: action.pokemon);

PokeDetailState _deselectPokeReducer(
        PokeDetailState oldState, DeselectPokeAction action) =>
    const PokeDetailState(pokemon: null);
