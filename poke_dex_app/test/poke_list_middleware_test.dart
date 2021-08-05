import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:poke_api_client/poke_api_client.dart';
import 'package:poke_api_client/poke_api_result.dart';
import 'package:poke_api_client/response/pokemon/pokemon_list_response.dart';
import 'package:poke_api_client/response/pokemon/pokemon_response.dart';
import 'package:poke_dex_app/actions/poke_list_actions.dart';
import 'package:poke_dex_app/middlewares/poke_dex_app_middleware.dart';
import 'package:poke_dex_app/reducers/poke_dex_app_reducer.dart';
import 'package:poke_dex_app/states/poke_dex_app_state.dart';
import 'package:redux/redux.dart';

import 'poke_list_middleware_test.mocks.dart';

@GenerateMocks([
  IPokeApiClient,
  MiddlewareClass,
])
void main() {
  group('PokeListMiddleware', () {
    final mockPokeApiClient = MockIPokeApiClient();

    test('FetchPokeListActionによってポケモン一覧APIが実行されること', () {
      final store = Store<PokeDexAppState>(
        pokeDexAppReducer,
        initialState: const PokeDexAppState(),
        middleware: pokeDexAppMiddleware(mockPokeApiClient),
      );

      when(
        mockPokeApiClient.getPokemonList(
          offset: 0,
          limit: 20,
        ),
      ).thenAnswer(
        (_) async => const PokeApiResult.success(
          PokemonListResponse(
            1118,
            'https://pokeapi.co/api/v2/pokemon/?offset=20&limit=20',
            null,
            [
              PokemonResponse(
                  'bulbasaur', 'https://pokeapi.co/api/v2/pokemon/1/'),
            ],
          ),
        ),
      );

      store.dispatch(FetchPokeListAction(offset: 0, limit: 20));

      verify(mockPokeApiClient.getPokemonList()).called(1);
    });
  });
}
