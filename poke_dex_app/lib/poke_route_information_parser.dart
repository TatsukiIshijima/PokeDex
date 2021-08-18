import 'package:flutter/material.dart';
import 'package:poke_api_client/response/pokemon/pokemon_response.dart';
import 'package:poke_dex_app/actions/poke_detail_actions.dart';
import 'package:poke_dex_app/states/poke_dex_app_state.dart';
import 'package:redux/redux.dart';

// FIXME:Route対応
class PokeRouteInformationParser
    extends RouteInformationParser<PokeDexAppState> {
  PokeRouteInformationParser(this.store);

  final Store<PokeDexAppState> store;

  @override
  Future<PokeDexAppState> parseRouteInformation(
      RouteInformation routeInformation) async {
    final uri = Uri.parse(routeInformation.location ?? '');
    if (uri.pathSegments.length == 2) {
      if (uri.pathSegments[0] != 'pokemon') {
        return store.state;
      }
      final name = uri.pathSegments[1];
      if (name.isEmpty) {
        return store.state;
      }
      // FIXME:index指定
      store.dispatch(SelectPokeAction(PokemonResponse(name, '1')));
    } else {
      store.dispatch(DeselectPokeAction());
    }
    return store.state;
  }

  @override
  RouteInformation? restoreRouteInformation(PokeDexAppState configuration) {
    if (configuration.pokeDetailState.pokemon != null) {
      return RouteInformation(
          location: '/pokemon/${configuration.pokeDetailState.pokemon?.name}');
    }
    return const RouteInformation(location: '/');
  }
}
