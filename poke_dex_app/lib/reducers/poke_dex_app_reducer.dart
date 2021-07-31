import 'package:poke_dex_app/poke_list_reducer.dart';
import 'package:poke_dex_app/states/poke_dex_app_state.dart';

PokeDexAppState pokeDexAppReducer(PokeDexAppState oldState, dynamic action) {
  return PokeDexAppState(
    pokeListState: pokeListReducer(
      oldState.pokeListState,
      action,
    ),
  );
}
