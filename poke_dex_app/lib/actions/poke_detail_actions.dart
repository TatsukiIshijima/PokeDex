import 'package:poke_dex_app/model/pokemon_item.dart';

class SelectPokeAction {
  SelectPokeAction(this.pokemon);

  final PokemonItem pokemon;
}

class DeselectPokeAction {
  DeselectPokeAction();
}
