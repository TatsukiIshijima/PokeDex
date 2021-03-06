// Mocks generated by Mockito 5.0.13 from annotations
// in poke_dex_app/test/mock_generator.dart.
// Do not manually edit this file.

import 'dart:async' as _i4;

import 'package:mockito/mockito.dart' as _i1;
import 'package:poke_api_client/poke_api_client.dart' as _i3;
import 'package:poke_api_client/poke_api_result.dart' as _i2;
import 'package:poke_api_client/response/pokemon/pokemon_list_response.dart'
    as _i5;

// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis

class _FakePokeApiResult<T> extends _i1.Fake implements _i2.PokeApiResult<T> {}

/// A class which mocks [IPokeApiClient].
///
/// See the documentation for Mockito's code generation for more information.
class MockIPokeApiClient extends _i1.Mock implements _i3.IPokeApiClient {
  MockIPokeApiClient() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<_i2.PokeApiResult<_i5.PokemonListResponse>> getPokemonList(
          {int? limit = 20, int? offset = 0}) =>
      (super.noSuchMethod(
          Invocation.method(
              #getPokemonList, [], {#limit: limit, #offset: offset}),
          returnValue: Future<_i2.PokeApiResult<_i5.PokemonListResponse>>.value(
              _FakePokeApiResult<_i5.PokemonListResponse>())) as _i4
          .Future<_i2.PokeApiResult<_i5.PokemonListResponse>>);
  @override
  String toString() => super.toString();
}
