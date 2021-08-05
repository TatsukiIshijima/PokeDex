import 'package:async/async.dart';
import 'package:poke_api_client/poke_api_client.dart';
import 'package:poke_api_client/response/pokemon/pokemon_response.dart';
import 'package:poke_dex_app/actions/poke_list_actions.dart';
import 'package:poke_dex_app/states/poke_dex_app_state.dart';
import 'package:redux/redux.dart';

class PokeListMiddleware implements MiddlewareClass<PokeDexAppState> {
  PokeListMiddleware(this._pokeApiClient);

  final IPokeApiClient _pokeApiClient;

  CancelableOperation<Store<PokeDexAppState>>? _operation;

  @override
  void call(Store<PokeDexAppState> store, dynamic action, NextDispatcher next) {
    if (action is! FetchPokeListAction) {
      next(action);
      return;
    }

    _operation?.cancel();

    _operation = CancelableOperation.fromFuture(
      _pokeApiClient
          .getPokemonList(
            offset: action.offset,
            limit: action.limit,
          )
          .then(
            (result) => result.when(
              success: (response) {
                final pokemonList = <PokemonResponse>[];
                if (!action.isRefresh) {
                  pokemonList.addAll(store.state.pokeListState.pokemonList);
                }
                pokemonList.addAll(response.results);
                return store..dispatch(ShowPokeListAction(pokemonList));
              },
              failure: (error) {
                return store..dispatch(ShowPokeApiErrorAction(error));
              },
            ),
          ),
    );
    next(action);
  }
}
