import 'package:poke_api_client/response/pokemon/pokemon_response.dart';

class SelectPokeAction {
  SelectPokeAction(this.pokemon);

  final PokemonResponse pokemon;
}

class DeselectPokeAction {
  DeselectPokeAction();
}
