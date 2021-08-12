import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:poke_dex_app/gen/colors.gen.dart';
import 'package:poke_dex_app/states/poke_detail_state.dart';
import 'package:poke_dex_app/states/poke_dex_app_state.dart';

class PokeDetailScreen extends StatelessWidget {
  const PokeDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PokeDex'),
      ),
      backgroundColor: ColorName.background,
      body: StoreConnector<PokeDexAppState, _PokeDetailViewModel>(
        converter: (store) => _PokeDetailViewModel(
          state: store.state.pokeDetailState,
        ),
        builder: (
          BuildContext context,
          _PokeDetailViewModel viewModel,
        ) {
          return const Center(
            child: Text(
              'PokeDetailScreen',
            ),
          );
        },
      ),
    );
  }
}

class _PokeDetailViewModel {
  _PokeDetailViewModel({
    required this.state,
  });

  final PokeDetailState state;
}
