import 'package:poke_api_client/poke_api_client.dart';
import 'package:poke_dex_app/middlewares/poke_list_middleware.dart';
import 'package:poke_dex_app/states/poke_dex_app_state.dart';
import 'package:redux/redux.dart';

List<Middleware<PokeDexAppState>> pokeDexAppMiddleware(
    IPokeApiClient pokeApiClient) {
  return [
    PokeListMiddleware(pokeApiClient),
  ];
}
