import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:http/http.dart' as http;
import 'package:poke_api_client/poke_api_client.dart';
import 'package:poke_dex_app/middlewares/poke_dex_app_middleware.dart';
import 'package:poke_dex_app/pages/poke_list_page.dart';
import 'package:poke_dex_app/reducers/poke_dex_app_reducer.dart';
import 'package:poke_dex_app/states/poke_dex_app_state.dart';
import 'package:poke_dex_app/themes/poke_dex_theme_data.dart';
import 'package:redux/redux.dart';

void main() {
  // https://redux.js.org/api/store#store
  // A store holds the whole state tree of your application.
  // The only way to change the state inside it is to dispatch an action on it.
  // store はアプリケーションツリーの全体の状態を持つ
  // 内部の状態を更新する唯一の方法は action を dispatch すること

  final pokeApiClient = PokeApiClient(http.Client());

  final store = Store<PokeDexAppState>(
    pokeDexAppReducer,
    // 初期値が initialState になる
    initialState: const PokeDexAppState(),
    middleware: pokeDexAppMiddleware(pokeApiClient),
  );
  runApp(PokeDexApp(store));
}

class PokeDexApp extends StatelessWidget {
  // This widget is the root of your application.
  const PokeDexApp(
    this.store, {
    Key? key,
  }) : super(key: key);

  final Store<PokeDexAppState> store;

  @override
  Widget build(BuildContext context) {
    return StoreProvider(
      store: store,
      child: MaterialApp(
        title: 'PokeDexApp',
        theme: PokeDexThemeData.themeData(),
        home: const PokeListPage(),
      ),
    );
  }
}
