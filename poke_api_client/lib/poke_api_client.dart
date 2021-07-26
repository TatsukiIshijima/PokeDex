library poke_api_client;

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:poke_api_client/poke_api_error.dart';
import 'package:poke_api_client/poke_api_result.dart';
import 'package:poke_api_client/response/pokemon/pokemon_list_response.dart';

const _domain = 'pokeapi.co';
const _version = 'v2';

abstract class ApiClient {
  ApiClient(this._client);

  final http.Client _client;

  Future<http.Response> _get(String url,
      {Map<String, String>? headers, int timeLimit = 5}) {
    return _client
        .get(Uri.parse(url), headers: headers)
        .timeout(Duration(seconds: timeLimit));
  }
}

abstract class IPokeApiClient {
  Future<PokeApiResult<PokemonListResponse>> getPokemonList(
      {int limit = 20, int offset = 0});
}

class PokeApiClient extends ApiClient implements IPokeApiClient {
  PokeApiClient(http.Client client) : super(client);

  final _baseUrl = 'https://$_domain/api/$_version';

  // https://zenn.dev/muttsu_623/articles/b928bad493a2c7f8b32f
  // https://dev.to/ashishrawat2911/handling-network-calls-and-exceptions-in-flutter-54me
  PokeApiError _toPokeApiError(http.Response response) {
    var _pokeApiError = PokeApiError.defaultError(
        'Received undefined error : statusCode=${response.statusCode}, body=${response.body}');
    switch (response.statusCode) {
      case 400:
        _pokeApiError = const PokeApiError.badRequest();
        break;
      case 403:
        _pokeApiError = const PokeApiError.forbidden();
        break;
      case 404:
        _pokeApiError = const PokeApiError.notFound();
        break;
      case 405:
        _pokeApiError = const PokeApiError.methodNotAllowed();
        break;
      case 406:
        _pokeApiError = const PokeApiError.notAcceptable();
        break;
      case 408:
        _pokeApiError = const PokeApiError.requestTimeout();
        break;
      case 500:
        _pokeApiError = const PokeApiError.internalServerError();
        break;
      case 503:
        _pokeApiError = const PokeApiError.serviceUnavailable();
        break;
    }
    return _pokeApiError;
  }

  Future<PokeApiResult<T>> _responseJson<T>(
      String url, T Function(Map<String, dynamic>) converter,
      {Map<String, String>? headers, int timeLimit = 5}) async {
    try {
      final response = await _get(url, headers: headers, timeLimit: timeLimit);
      if (response.statusCode >= 200 && response.statusCode < 300) {
        return PokeApiResult.success(
            converter(json.decode(response.body) as Map<String, dynamic>));
      } else {
        return PokeApiResult.failure(_toPokeApiError(response));
      }
    } on TimeoutException {
      return const PokeApiResult.failure(PokeApiError.requestTimeout());
    } on SocketException {
      return const PokeApiResult.failure(PokeApiError.noInternetConnection());
    }
  }

  @override
  Future<PokeApiResult<PokemonListResponse>> getPokemonList(
      {int limit = 20, int offset = 0}) async {
    final url = '$_baseUrl/pokemon/&limit=$limit?offset=$offset';
    return _responseJson(url, (json) => PokemonListResponse.fromJson(json));
  }
}
