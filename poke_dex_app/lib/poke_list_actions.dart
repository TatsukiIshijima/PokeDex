import 'package:poke_api_client/poke_api_error.dart';
import 'package:poke_api_client/response/pokemon/pokemon_list_response.dart';

class PokeListFetchAction {
  PokeListFetchAction(this.offset, this.limit);

  final int offset;
  final int limit;
}

class PokeListLoadingAction {}

class PokeListEmptyAction {}

class PokeListErrorAction {
  PokeListErrorAction(this.apiError);

  final PokeApiError apiError;
}

class PokeListShowAction {
  PokeListShowAction(this.result);

  final PokemonListResponse result;
}
