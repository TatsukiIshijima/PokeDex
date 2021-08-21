import 'package:async/async.dart';
import 'package:poke_api_client/extension/string_extension.dart';
import 'package:poke_api_client/poke_api_client.dart';
import 'package:poke_api_client/poke_api_error.dart';
import 'package:poke_api_client/response/pokemon/pokemon/pokemon_response.dart';
import 'package:poke_api_client/response/pokemon/species/species_response.dart';
import 'package:poke_api_client/response/pokemon/types/type_response.dart';
import 'package:poke_dex_app/actions/poke_detail_actions.dart';
import 'package:poke_dex_app/actions/poke_list_actions.dart';
import 'package:poke_dex_app/model/pokemon_info.dart';
import 'package:poke_dex_app/states/poke_dex_app_state.dart';
import 'package:redux/redux.dart';

class PokeDetailMiddleware implements MiddlewareClass<PokeDexAppState> {
  PokeDetailMiddleware(this._pokeApiClient);

  final IPokeApiClient _pokeApiClient;

  CancelableOperation<Store<PokeDexAppState>>? _operation;

  @override
  void call(Store<PokeDexAppState> store, dynamic action, NextDispatcher next) {
    if (action is! FetchPokeDetailAction) {
      next(action);
      return;
    }

    _operation?.cancel();
    _operation =
        CancelableOperation.fromFuture(_getPokemonInfo(store, action, next));
    next(action);
  }

  Future<Store<PokeDexAppState>> _getPokemonInfo(
    Store<PokeDexAppState> store,
    FetchPokeDetailAction action,
    NextDispatcher next,
  ) async {
    final dynamic pokemonResult = await _fetchPokemon(action.index);
    if (pokemonResult is PokeApiError) {
      return store..dispatch(ShowPokeApiErrorAction(pokemonResult));
    }
    if (pokemonResult is PokemonResponse) {
      final futures = <Future>[
        _fetchSpecies(pokemonResult.id),
      ];
      for (final type in pokemonResult.types) {
        futures.add(_fetchType(type.type.url.getIndex()));
      }

      final results = await Future.wait<dynamic>(futures);
      SpeciesResponse? speciesResponse;
      final types = <TypeResponse>[];
      for (final result in results) {
        if (result is PokeApiError) {
          return store..dispatch(ShowPokeApiErrorAction(result));
        }
        if (result is SpeciesResponse) {
          speciesResponse = result;
        }
        if (result is TypeResponse) {
          types.add(result);
        }
      }
      if (speciesResponse != null && types.isNotEmpty) {
        final pokemonInfo =
            PokemonInfo.from(pokemonResult, speciesResponse, types);
        return store..dispatch(ShowPokeDetailAction(pokemonInfo));
      }
    }
    throw Exception('Unknown case in get pokemon info.');
  }

  Future<dynamic> _fetchPokemon(int id) =>
      _pokeApiClient.getPokemon(id).then<dynamic>(
            (result) => result.when(
              success: (pokemon) => pokemon,
              failure: (pokeApiError) => pokeApiError,
            ),
          );

  Future<dynamic> _fetchSpecies(int id) =>
      _pokeApiClient.getPokemonSpecies(id).then<dynamic>(
            (result) => result.when(
              success: (species) => species,
              failure: (pokeApiError) => pokeApiError,
            ),
          );

  Future<dynamic> _fetchType(int id) =>
      _pokeApiClient.getTypes(id).then<dynamic>(
            (result) => result.when(
              success: (type) => type,
              failure: (pokeApiError) => pokeApiError,
            ),
          );
}
