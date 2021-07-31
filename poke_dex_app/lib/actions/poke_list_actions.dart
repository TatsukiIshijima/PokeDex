import 'package:poke_api_client/poke_api_error.dart';
import 'package:poke_api_client/response/pokemon/pokemon_response.dart';

// 2. action 定義
class FetchPokeListAction {
  FetchPokeListAction({
    required this.offset,
    required this.limit,
  });

  final int offset;
  final int limit;
}

class ShowPokeListAction {
  ShowPokeListAction(
    this.pokemonList,
  );

  final List<PokemonResponse> pokemonList;
}

class ShowPokeApiErrorAction {
  ShowPokeApiErrorAction(
    this.apiError,
  );

  final PokeApiError apiError;
}
