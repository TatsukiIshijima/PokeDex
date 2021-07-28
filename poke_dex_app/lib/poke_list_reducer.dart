import 'package:poke_dex_app/poke_list_actions.dart';
import 'package:poke_dex_app/poke_list_state.dart';
import 'package:redux/redux.dart';

final pokeListReducer = combineReducers<PokeListState>([
  TypedReducer<PokeListState, PokeListEmptyAction>(_onEmpty),
  TypedReducer<PokeListState, PokeListLoadingAction>(_onLoad),
  TypedReducer<PokeListState, PokeListErrorAction>(_onError),
  TypedReducer<PokeListState, PokeListShowAction>(_onFetched),
]);

PokeListState _onEmpty(PokeListState state, PokeListEmptyAction action) =>
    PokeListEmpty();

PokeListState _onLoad(PokeListState state, PokeListLoadingAction action) =>
    PokeListLoading();

PokeListState _onError(PokeListState state, PokeListErrorAction action) =>
    PokeListError(action.apiError);

PokeListState _onFetched(PokeListState state, PokeListShowAction action) =>
    action.result.results.isEmpty
        ? PokeListEmpty()
        : PokeListShow(action.result);
