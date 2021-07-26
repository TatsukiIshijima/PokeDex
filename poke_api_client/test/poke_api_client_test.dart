import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:poke_api_client/poke_api_client.dart';
import 'package:poke_api_client/poke_api_error.dart';
import 'package:poke_api_client/response/pokemon/pokemon_list_response.dart';
import 'package:poke_api_client/response/pokemon/pokemon_response.dart';

import 'poke_api_client_test.mocks.dart';

@GenerateMocks([http.Client])
void main() {
  group('GetPokemonList', () {
    test('ポケモン一覧のレスポンスが取得できること', () async {
      final mockClient = MockClient();
      final mockResponse = json.encode(const PokemonListResponse(
          1118, 'https://pokeapi.co/api/v2/pokemon/?offset=20&limit=20', null, [
        PokemonResponse('bulbasaur', 'https://pokeapi.co/api/v2/pokemon/1/')
      ]).toJson());
      when(mockClient.get(Uri.parse(
              'https://pokeapi.co/api/v2/pokemon/&limit=20?offset=0')))
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
                    .having(
                        (response) => response.results[0].getImageUrl(),
                        'image url',
                        'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/1.png'));
          },
          failure: (error) {});
    });

    test('ステータスコードが400の場合はBadRequestのエラーが返ること', () async {
      final mockClient = MockClient();
      when(mockClient.get(Uri.parse(
              'https://pokeapi.co/api/v2/pokemon/&limit=20?offset=0')))
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
              'https://pokeapi.co/api/v2/pokemon/&limit=20?offset=0')))
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
              'https://pokeapi.co/api/v2/pokemon/&limit=20?offset=0')))
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
              'https://pokeapi.co/api/v2/pokemon/&limit=20?offset=0')))
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
              'https://pokeapi.co/api/v2/pokemon/&limit=20?offset=0')))
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
              'https://pokeapi.co/api/v2/pokemon/&limit=20?offset=0')))
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
              'https://pokeapi.co/api/v2/pokemon/&limit=20?offset=0')))
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
              'https://pokeapi.co/api/v2/pokemon/&limit=20?offset=0')))
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
              'https://pokeapi.co/api/v2/pokemon/&limit=20?offset=0')))
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
              'https://pokeapi.co/api/v2/pokemon/&limit=20?offset=0')))
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
}
