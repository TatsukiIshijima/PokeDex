import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:poke_api_client/extension/string_extension.dart';
import 'package:poke_api_client/poke_api_client.dart';
import 'package:poke_api_client/poke_api_error.dart';
import 'package:poke_api_client/response/common/flavor_text.dart';
import 'package:poke_api_client/response/common/name.dart';
import 'package:poke_api_client/response/common/named_api_resource.dart';
import 'package:poke_api_client/response/pokemon/pokemon/pokemon_official_artwork_response.dart';
import 'package:poke_api_client/response/pokemon/pokemon/pokemon_other_response.dart';
import 'package:poke_api_client/response/pokemon/pokemon/pokemon_response.dart';
import 'package:poke_api_client/response/pokemon/pokemon/pokemon_sprite_response.dart';
import 'package:poke_api_client/response/pokemon/pokemon/pokemon_type_response.dart';
import 'package:poke_api_client/response/pokemon/pokemon_list_response.dart';
import 'package:poke_api_client/response/pokemon/species/genus_response.dart';
import 'package:poke_api_client/response/pokemon/species/species_response.dart';
import 'package:poke_api_client/response/pokemon/types/type_response.dart';

import 'poke_api_client_test.mocks.dart';

@GenerateMocks([http.Client])
void main() {
  group('GetPokemonList', () {
    test('ポケモン一覧のレスポンスが取得できること', () async {
      final mockClient = MockClient();
      final mockResponse = json.encode(const PokemonListResponse(
          1118, 'https://pokeapi.co/api/v2/pokemon/?offset=20&limit=20', null, [
        NamedApiResource('bulbasaur', 'https://pokeapi.co/api/v2/pokemon/1/'),
      ]).toJson());
      when(mockClient.get(Uri.parse(
              'https://pokeapi.co/api/v2/pokemon/?limit=20&offset=0')))
          .thenAnswer((_) async => http.Response(mockResponse, 200));

      final pokeApiClient = PokeApiClient(mockClient);
      final result = await pokeApiClient.getPokemonList();

      verify(mockClient.get(any)).called(1);

      result.when(
          success: (data) {
            expect(
                data,
                isA<PokemonListResponse>()
                    .having((response) => response.count, 'count', 1118)
                    .having((response) => response.results.length,
                        'results length', 1)
                    .having((response) => response.previous, 'previous', null)
                    .having((response) => response.next, 'next',
                        'https://pokeapi.co/api/v2/pokemon/?offset=20&limit=20')
                    .having((response) => response.results[0].name, 'name',
                        'bulbasaur')
                    .having(
                        (response) => response.results[0].url.getImageUrl(),
                        'image url',
                        'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/1.png'));
          },
          failure: (error) {});
    });

    test('ステータスコードが400の場合はBadRequestのエラーが返ること', () async {
      final mockClient = MockClient();
      when(mockClient.get(Uri.parse(
              'https://pokeapi.co/api/v2/pokemon/?limit=20&offset=0')))
          .thenAnswer((_) async => http.Response('', 400));

      final pokeApiClient = PokeApiClient(mockClient);
      final result = await pokeApiClient.getPokemonList();

      verify(mockClient.get(any)).called(1);

      result.when(
          success: (data) {},
          failure: (error) {
            expect(error, const PokeApiError.badRequest());
          });
    });

    test('ステータスコードが403の場合はForbiddenのエラーが返ること', () async {
      final mockClient = MockClient();
      when(mockClient.get(Uri.parse(
              'https://pokeapi.co/api/v2/pokemon/?limit=20&offset=0')))
          .thenAnswer((_) async => http.Response('', 403));

      final pokeApiClient = PokeApiClient(mockClient);
      final result = await pokeApiClient.getPokemonList();

      verify(mockClient.get(any)).called(1);

      result.when(
          success: (data) {},
          failure: (error) {
            expect(error, const PokeApiError.forbidden());
          });
    });

    test('ステータスコードが404の場合はNotFoundのエラーが返ること', () async {
      final mockClient = MockClient();
      when(mockClient.get(Uri.parse(
              'https://pokeapi.co/api/v2/pokemon/?limit=20&offset=0')))
          .thenAnswer((_) async => http.Response('', 404));

      final pokeApiClient = PokeApiClient(mockClient);
      final result = await pokeApiClient.getPokemonList();
      result.when(
          success: (data) {},
          failure: (error) {
            expect(error, const PokeApiError.notFound());
          });
    });

    test('ステータスコードが405の場合はMethodNotAllowedのエラーが返ること', () async {
      final mockClient = MockClient();
      when(mockClient.get(Uri.parse(
              'https://pokeapi.co/api/v2/pokemon/?limit=20&offset=0')))
          .thenAnswer((_) async => http.Response('', 405));

      final pokeApiClient = PokeApiClient(mockClient);
      final result = await pokeApiClient.getPokemonList();

      verify(mockClient.get(any)).called(1);

      result.when(
          success: (data) {},
          failure: (error) {
            expect(error, const PokeApiError.methodNotAllowed());
          });
    });

    test('ステータスコードが406の場合はNotAcceptableのエラーが返ること', () async {
      final mockClient = MockClient();
      when(mockClient.get(Uri.parse(
              'https://pokeapi.co/api/v2/pokemon/?limit=20&offset=0')))
          .thenAnswer((_) async => http.Response('', 406));

      final pokeApiClient = PokeApiClient(mockClient);
      final result = await pokeApiClient.getPokemonList();

      verify(mockClient.get(any)).called(1);

      result.when(
          success: (data) {},
          failure: (error) {
            expect(error, const PokeApiError.notAcceptable());
          });
    });

    test('ステータスコードが408の場合はRequestTimeoutのエラーが返ること', () async {
      final mockClient = MockClient();
      when(mockClient.get(Uri.parse(
              'https://pokeapi.co/api/v2/pokemon/?limit=20&offset=0')))
          .thenAnswer((_) async => http.Response('', 408));

      final pokeApiClient = PokeApiClient(mockClient);
      final result = await pokeApiClient.getPokemonList();

      verify(mockClient.get(any)).called(1);

      result.when(
          success: (data) {},
          failure: (error) {
            expect(error, const PokeApiError.requestTimeout());
          });
    });

    test('ステータスコードが500の場合はInternalServerErrorのエラーが返ること', () async {
      final mockClient = MockClient();
      when(mockClient.get(Uri.parse(
              'https://pokeapi.co/api/v2/pokemon/?limit=20&offset=0')))
          .thenAnswer((_) async => http.Response('', 500));

      final pokeApiClient = PokeApiClient(mockClient);
      final result = await pokeApiClient.getPokemonList();

      verify(mockClient.get(any)).called(1);

      result.when(
          success: (data) {},
          failure: (error) {
            expect(error, const PokeApiError.internalServerError());
          });
    });

    test('ステータスコードが503の場合はServiceUnavailableのエラーが返ること', () async {
      final mockClient = MockClient();
      when(mockClient.get(Uri.parse(
              'https://pokeapi.co/api/v2/pokemon/?limit=20&offset=0')))
          .thenAnswer((_) async => http.Response('', 503));

      final pokeApiClient = PokeApiClient(mockClient);
      final result = await pokeApiClient.getPokemonList();

      verify(mockClient.get(any)).called(1);

      result.when(
          success: (data) {},
          failure: (error) {
            expect(error, const PokeApiError.serviceUnavailable());
          });
    });

    test('タイムアウトの場合はRequestTimeoutのエラーが返ること', () async {
      final mockClient = MockClient();
      when(mockClient.get(Uri.parse(
              'https://pokeapi.co/api/v2/pokemon/?limit=20&offset=0')))
          .thenThrow(TimeoutException(''));

      final pokeApiClient = PokeApiClient(mockClient);
      final result = await pokeApiClient.getPokemonList();

      verify(mockClient.get(any)).called(1);

      result.when(
          success: (data) {},
          failure: (error) {
            expect(error, const PokeApiError.requestTimeout());
          });
    });

    test('オフラインの場合はNoInternetConnectionのエラーが返ること', () async {
      final mockClient = MockClient();
      when(mockClient.get(Uri.parse(
              'https://pokeapi.co/api/v2/pokemon/?limit=20&offset=0')))
          .thenThrow(const SocketException(''));

      final pokeApiClient = PokeApiClient(mockClient);
      final result = await pokeApiClient.getPokemonList();

      verify(mockClient.get(any)).called(1);

      result.when(
          success: (data) {},
          failure: (error) {
            expect(error, const PokeApiError.noInternetConnection());
          });
    });
  });

  group('GetPokemon', () {
    final mockClient = MockClient();

    test('ポケモン情報が取得できること', () async {
      final mockResponse = json.encode(const PokemonResponse(
        1,
        'bulbasaur',
        7,
        69,
        [
          PokemonTypeResponse(
            1,
            NamedApiResource(
              'grass',
              'https://pokeapi.co/api/v2/type/12/',
            ),
          ),
          PokemonTypeResponse(
            2,
            NamedApiResource(
              'poison',
              'https://pokeapi.co/api/v2/type/4/',
            ),
          )
        ],
        NamedApiResource(
          'bulbasaur',
          'https://pokeapi.co/api/v2/pokemon-species/1/',
        ),
        PokemonSpriteResponse(
          PokemonOtherResponse(
            PokemonOfficialArtworkResponse(
                'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/1.png'),
          ),
        ),
      ).toJson());

      when(mockClient.get(Uri.parse('https://pokeapi.co/api/v2/pokemon/1')))
          .thenAnswer((_) async => http.Response(mockResponse, 200));

      final pokeApiClient = PokeApiClient(mockClient);
      final result = await pokeApiClient.getPokemon(1);

      verify(mockClient.get(any)).called(1);

      result.when(
        success: (data) {
          expect(
              data,
              isA<PokemonResponse>()
                  .having((response) => response.id, 'id', 1)
                  .having((response) => response.name, 'name', 'bulbasaur')
                  .having((response) => response.height, 'height(dm)', 7)
                  .having((response) => response.weight, 'weight(hg)', 69)
                  .having((response) => response.types.length, 'type length', 2)
                  .having((response) => response.types[0].type.name,
                      'type1 name', 'grass')
                  .having((response) => response.types[0].type.url.getIndex(),
                      'type1 index', 12)
                  .having((response) => response.types[1].type.name,
                      'type2 name', 'poison')
                  .having((response) => response.types[1].type.url.getIndex(),
                      'type2 index', 4)
                  .having((response) => response.species.url.getIndex(),
                      'species index', 1)
                  .having(
                      (response) =>
                          response.sprites.other.officialArtwork.frontDefault,
                      'officialArtwork front default',
                      'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/1.png'));
        },
        failure: (error) {},
      );
    });
  });

  group('GetPokemonSpecies', () {
    final mockClient = MockClient();

    test('ポケモン種が取得できること', () async {
      final mockResponse = json.encode(const SpeciesResponse(
        1,
        'bulbasaur',
        [
          Name(
            'Bulbasaur',
            NamedApiResource(
              'en',
              'https://pokeapi.co/api/v2/language/9/',
            ),
          ),
        ],
        [
          FlavorText(
            'A strange seed was planted on its back at birth.The plant sprouts and grows with this POKéMON',
            NamedApiResource(
              'en',
              'https://pokeapi.co/api/v2/language/9/',
            ),
            NamedApiResource(
              'red',
              'https://pokeapi.co/api/v2/version/1/',
            ),
          ),
        ],
        [],
        [
          GenusResponse(
              'Seed Pokémon',
              NamedApiResource(
                'en',
                'https://pokeapi.co/api/v2/language/9/',
              )),
        ],
      ).toJson());

      when(mockClient
              .get(Uri.parse('https://pokeapi.co/api/v2/pokemon-species/1')))
          .thenAnswer((_) async => http.Response(mockResponse, 200));

      final pokeApiClient = PokeApiClient(mockClient);
      final result = await pokeApiClient.getPokemonSpecies(1);

      verify(mockClient.get(any)).called(1);

      result.when(
        success: (data) {
          expect(
              data,
              isA<SpeciesResponse>()
                  .having((response) => response.id, 'id', 1)
                  .having((response) => response.name, 'name', 'bulbasaur')
                  .having((response) => response.names.first.name, 'names name',
                      'Bulbasaur')
                  .having(
                      (response) => response
                          .flavorTextEntries.first.flavorText.isNotEmpty,
                      'flavorText',
                      true)
                  .having((response) => response.genera.first.genus, 'genus',
                      'Seed Pokémon'));
        },
        failure: (error) {},
      );
    });
  });

  group('GetTypes', () {
    final mockClient = MockClient();

    test('ポケモンのタイプが取得できること', () async {
      final mockResponse = json.encode(const TypeResponse(
        4,
        'poison',
        [
          Name('Poison',
              NamedApiResource('en', 'https://pokeapi.co/api/v2/language/9/'))
        ],
      ).toJson());

      when(mockClient.get(Uri.parse('https://pokeapi.co/api/v2/type/4')))
          .thenAnswer((_) async => http.Response(mockResponse, 200));

      final pokeApiClient = PokeApiClient(mockClient);
      final result = await pokeApiClient.getTypes(4);

      verify(mockClient.get(any)).called(1);

      result.when(
        success: (data) {
          expect(
              data,
              isA<TypeResponse>()
                  .having((response) => response.id, 'id', 4)
                  .having((response) => response.name, 'name', 'poison')
                  .having((response) => response.names.first.name, 'names name',
                      'Poison'));
        },
        failure: (error) {},
      );
    });
  });
}
