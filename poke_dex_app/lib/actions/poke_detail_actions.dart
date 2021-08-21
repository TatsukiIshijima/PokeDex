import 'package:poke_dex_app/model/pokemon_info.dart';
import 'package:poke_dex_app/model/pokemon_item.dart';

class SelectPokeAction {
  SelectPokeAction(this.pokemon);

  final PokemonItem pokemon;
}

class DeselectPokeAction {
  DeselectPokeAction();
}

class FetchPokeDetailAction {
  FetchPokeDetailAction(this.index);

  final int index;
}

class ShowPokeDetailAction {
  ShowPokeDetailAction(this.pokemonInfo);

  final PokemonInfo pokemonInfo;
}
