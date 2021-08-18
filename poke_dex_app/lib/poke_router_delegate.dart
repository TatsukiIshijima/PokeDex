import 'package:flutter/material.dart';
import 'package:poke_dex_app/actions/poke_detail_actions.dart';
import 'package:poke_dex_app/pages/poke_detail_screen.dart';
import 'package:poke_dex_app/pages/poke_list_screen.dart';
import 'package:poke_dex_app/states/poke_dex_app_state.dart';
import 'package:redux/redux.dart';

class PokeRouterDelegate extends RouterDelegate<PokeDexAppState>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin<PokeDexAppState> {
  PokeRouterDelegate(this.store);

  final Store<PokeDexAppState> store;

  @override
  Widget build(BuildContext context) {
    return Navigator(
      pages: [
        const MaterialPage<dynamic>(
          key: ValueKey('PokeListPage'),
          name: 'PokeListPage',
          child: PokeListScreen(),
        ),
        if (store.state.pokeDetailState.pokemon != null)
          const MaterialPage<dynamic>(
            key: ValueKey('PokeDetailPage'),
            name: 'PokeDetailPage',
            child: PokeDetailScreen(),
          ),
      ],
      onPopPage: (route, dynamic result) {
        if (!route.didPop(result)) {
          return false;
        }
        popRoute();
        return true;
      },
    );
  }

  @override
  GlobalKey<NavigatorState> get navigatorKey => GlobalKey<NavigatorState>();

  @override
  Future<void> setNewRoutePath(PokeDexAppState configuration) async {
    // 状態更新は reducer で行われるためここでは行う必要がない想定
  }

  @override
  PokeDexAppState get currentConfiguration => store.state;

  @override
  Future<bool> popRoute() {
    // Android の Back Key 対応
    // 参考：https://medium.com/geekculture/a-simpler-guide-to-flutter-navigator-2-0-part-i-70623cedc93b
    if (store.state.pokeDetailState.pokemon != null) {
      store.dispatch(DeselectPokeAction());
      return Future.value(true);
    }
    return super.popRoute();
  }
}
