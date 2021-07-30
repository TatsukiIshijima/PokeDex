import 'dart:async';

import 'package:async/async.dart';
import 'package:poke_api_client/poke_api_client.dart';
import 'package:poke_dex_app/poke_list_actions.dart';
import 'package:poke_dex_app/poke_list_state.dart';
import 'package:redux/redux.dart';

class PokeListMiddleware implements MiddlewareClass<PokeListState> {
  PokeListMiddleware(this._pokeApiClient);

  final PokeApiClient _pokeApiClient;

  Timer? _timer;
  CancelableOperation<Store<PokeListState>>? _operation;

  @override
  void call(Store<PokeListState> store, dynamic action, NextDispatcher next) {
    if (action is PokeListFetchAction) {
      _timer?.cancel();
      _operation?.cancel();

      _timer = Timer(const Duration(microseconds: 250), () {
        // TODO: offset and limit control
        store.dispatch(PokeListLoadingAction());

        _operation = CancelableOperation.fromFuture(
          _pokeApiClient
              .getPokemonList(
                offset: action.offset,
                limit: action.limit,
              )
              .then(
                (result) => result.when(
                  success: (response) {
                    if (response.results.isEmpty) {
                      return store..dispatch(PokeListEmptyAction());
                    }
                    return store..dispatch(PokeListShowAction(response));
                  },
                  failure: (error) {
                    return store..dispatch(PokeListErrorAction(error));
                  },
                ),
              ),
        );
      });
    }
    next(action);
  }
}
