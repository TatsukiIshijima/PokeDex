import 'package:flutter/material.dart';
import 'package:poke_dex_app/actions/poke_detail_actions.dart';
import 'package:poke_dex_app/model/pokemon_item.dart';
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
      final index = uri.pathSegments[1];
      if (index.isEmpty) {
        return store.state;
      }
      // FIXME:imageUrl対応
      store.dispatch(SelectPokeAction(PokemonItem(index: index, imageUrl: '')));
    } else {
      store.dispatch(DeselectPokeAction());
    }
    return store.state;
  }

  @override
  RouteInformation? restoreRouteInformation(PokeDexAppState configuration) {
    if (configuration.pokeDetailState.pokemon != null) {
      return RouteInformation(
          location: '/pokemon/${configuration.pokeDetailState.pokemon?.index}');
    }
    return const RouteInformation(location: '/');
  }
}
