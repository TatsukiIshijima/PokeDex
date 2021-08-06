import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:poke_api_client/poke_api_error.dart';
import 'package:poke_api_client/poke_api_result.dart';
import 'package:poke_api_client/response/pokemon/pokemon_list_response.dart';
import 'package:poke_api_client/response/pokemon/pokemon_response.dart';
import 'package:poke_dex_app/actions/poke_list_actions.dart';
import 'package:poke_dex_app/middlewares/poke_dex_app_middleware.dart';
import 'package:poke_dex_app/reducers/poke_dex_app_reducer.dart';
import 'package:poke_dex_app/states/poke_dex_app_state.dart';
import 'package:redux/redux.dart';

import 'mock_generator.mocks.dart';

void main() {
  group('PokeListReducer', () {
    final mockPokeApiClient = MockIPokeApiClient();

    test('ポケモン一覧の取得成功時にstoreにポケモン一覧が保存されること', () async {
      final store = Store<PokeDexAppState>(
        pokeDexAppReducer,
        initialState: const PokeDexAppState(),
        middleware: pokeDexAppMiddleware(mockPokeApiClient),
      );

      when(mockPokeApiClient.getPokemonList(offset: 0, limit: 20))
          .thenAnswer((_) async => const PokeApiResult.success(
                PokemonListResponse(
                    1118,
                    'https://pokeapi.co/api/v2/pokemon/?offset=20&limit=20',
                    null, [
                  PokemonResponse(
                      'bulbasaur', 'https://pokeapi.co/api/v2/pokemon/1/')
                ]),
              ));

      store.dispatch(FetchPokeListAction(offset: 0, limit: 20));

      verify(mockPokeApiClient.getPokemonList()).called(1);

      expect(store.state.pokeListState.offset, 0);
      expect(store.state.pokeListState.limit, 20);
      expect(store.state.pokeListState.pokemonList.isEmpty, true);
      expect(store.state.pokeListState.loadingState.isLoading, true);
      expect(store.state.pokeListState.errorState.apiErrorState, null);

      // Future メソッドの終了まで待機
      await untilCalled(mockPokeApiClient.getPokemonList());

      expect(store.state.pokeListState.offset, 0);
      expect(store.state.pokeListState.limit, 20);
      expect(store.state.pokeListState.pokemonList.isNotEmpty, true);
      expect(store.state.pokeListState.loadingState.isLoading, false);
      expect(store.state.pokeListState.errorState.apiErrorState, null);
    });

    test('オフラインでポケモン一覧取得に失敗時はstoreにオフラインエラーが保存されること', () async {
      final store = Store<PokeDexAppState>(
        pokeDexAppReducer,
        initialState: const PokeDexAppState(),
        middleware: pokeDexAppMiddleware(mockPokeApiClient),
      );

      when(mockPokeApiClient.getPokemonList(offset: 0, limit: 20))
          .thenAnswer((_) async => const PokeApiResult.failure(
                PokeApiError.noInternetConnection(),
              ));

      store.dispatch(FetchPokeListAction(offset: 0, limit: 20));

      verify(mockPokeApiClient.getPokemonList()).called(1);

      expect(store.state.pokeListState.offset, 0);
      expect(store.state.pokeListState.limit, 20);
      expect(store.state.pokeListState.pokemonList.isEmpty, true);
      expect(store.state.pokeListState.loadingState.isLoading, true);
      expect(store.state.pokeListState.errorState.apiErrorState, null);

      // Future メソッドの終了まで待機
      await untilCalled(mockPokeApiClient.getPokemonList());

      expect(store.state.pokeListState.offset, 0);
      expect(store.state.pokeListState.limit, 20);
      expect(store.state.pokeListState.pokemonList.isEmpty, true);
      expect(store.state.pokeListState.loadingState.isLoading, false);
      expect(store.state.pokeListState.errorState.apiErrorState?.apiError,
          const PokeApiError.noInternetConnection());
    });
  });
}
