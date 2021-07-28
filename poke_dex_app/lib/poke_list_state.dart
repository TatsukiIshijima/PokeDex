import 'package:poke_api_client/poke_api_error.dart';
import 'package:poke_api_client/response/pokemon/pokemon_list_response.dart';

abstract class PokeListState {}

class PokeListInitial implements PokeListState {}

class PokeListLoading implements PokeListState {}

class PokeListEmpty implements PokeListState {}

class PokeListError implements PokeListState {
  PokeListError(this.apiError);

  final PokeApiError apiError;
}

class PokeListShow implements PokeListState {
  PokeListShow(this.result);

  final PokemonListResponse result;
}
