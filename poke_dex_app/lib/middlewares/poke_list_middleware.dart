import 'dart:async';

import 'package:async/async.dart';
import 'package:poke_api_client/poke_api_client.dart';
import 'package:poke_dex_app/actions/poke_list_actions.dart';
import 'package:poke_dex_app/states/poke_dex_app_state.dart';
import 'package:redux/redux.dart';

class PokeListMiddleware implements MiddlewareClass<PokeDexAppState> {
  PokeListMiddleware(this._pokeApiClient);

  final PokeApiClient _pokeApiClient;

  Timer? _timer;
  CancelableOperation<Store<PokeDexAppState>>? _operation;

  @override
  void call(Store<PokeDexAppState> store, dynamic action, NextDispatcher next) {
    if (action is FetchPokeListAction) {
      _timer?.cancel();
      _operation?.cancel();

      _timer = Timer(const Duration(microseconds: 250), () {
        _operation = CancelableOperation.fromFuture(
          _pokeApiClient
              .getPokemonList(
                offset: action.offset,
                limit: action.limit,
              )
              .then(
                (result) => result.when(
                  success: (response) {
                    return store
                      ..dispatch(ShowPokeListAction(response.results));
                  },
                  failure: (error) {
                    return store..dispatch(ShowPokeApiErrorAction(error));
                  },
                ),
              ),
        );
      });
    }
    next(action);
  }
}
