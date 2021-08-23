import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:poke_dex_app/actions/poke_detail_actions.dart';
import 'package:poke_dex_app/gen/colors.gen.dart';
import 'package:poke_dex_app/pages/loading_view.dart';
import 'package:poke_dex_app/pages/poke_type_view.dart';
import 'package:poke_dex_app/states/poke_detail_state.dart';
import 'package:poke_dex_app/states/poke_dex_app_state.dart';

class PokeDetailScreen extends StatelessWidget {
  const PokeDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorName.background,
      body: StoreConnector<PokeDexAppState, _PokeDetailViewModel>(
        onInit: (store) {
          store.dispatch(FetchPokeDetailAction(
              store.state.pokeDetailState.selectPokemon?.index ?? 1));
        },
        converter: (store) => _PokeDetailViewModel(
          state: store.state.pokeDetailState,
        ),
        builder: (
          BuildContext context,
          _PokeDetailViewModel viewModel,
        ) {
          return Stack(
            children: [
              _PokeDetailPageBody(
                pokeDetailState: viewModel.state,
              ),
              if (viewModel.state.loadingState.isLoading) const LoadingView(),
            ],
          );
        },
      ),
    );
  }
}

class _PokeDetailPageBody extends StatelessWidget {
  const _PokeDetailPageBody({
    required this.pokeDetailState,
  });

  final PokeDetailState pokeDetailState;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        _AppBar(pokeDetailState: pokeDetailState),
        if (pokeDetailState.errorState.apiErrorState != null)
          SliverFillRemaining(
            child: Center(
              child: Text(
                'Error : ${pokeDetailState.errorState.apiErrorState?.apiError}',
                style: const TextStyle(color: ColorName.white),
              ),
            ),
          ),
        if (pokeDetailState.errorState.apiErrorState == null)
          SliverToBoxAdapter(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(
                    top: 32,
                    bottom: 8,
                  ),
                  child: Text(
                    pokeDetailState.pokemonInfo?.name ?? '',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: ColorName.white,
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                    bottom: 16,
                  ),
                  child: Text(
                    pokeDetailState.pokemonInfo?.classification ?? '',
                    style: const TextStyle(
                      color: ColorName.white,
                      fontSize: 20,
                    ),
                  ),
                ),
                PokeTypeView(
                  types: pokeDetailState.pokemonInfo?.types ?? [],
                ),
                Container(
                  margin: const EdgeInsets.only(
                    top: 16,
                  ),
                  child: Text(
                    pokeDetailState.pokemonInfo?.description ?? '',
                    style: const TextStyle(
                      color: ColorName.white,
                      fontSize: 20,
                    ),
                  ),
                )
              ],
            ),
          ),
      ],
    );
  }
}

class _AppBar extends StatelessWidget {
  const _AppBar({
    required this.pokeDetailState,
  });

  final PokeDetailState pokeDetailState;

  @override
  Widget build(BuildContext context) {
    final url = pokeDetailState.selectPokemon?.imageUrl ?? '';
    if (pokeDetailState.errorState.apiErrorState != null || url.isEmpty) {
      return const SliverAppBar(
        title: Text('PokeDex'),
      );
    } else {
      return SliverAppBar(
        expandedHeight: 300,
        pinned: true,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(244),
          child: Container(),
        ),
        flexibleSpace: Center(
          child: ExtendedImage.network(
            url,
            width: 240,
            height: 240,
            fit: BoxFit.fill,
            cache: true,
            loadStateChanged: (state) {
              switch (state.extendedImageLoadState) {
                case LoadState.loading:
                  // TODO: Handle this case.
                  return Container();
                case LoadState.failed:
                  // TODO: Handle this case.
                  return Container();
                case LoadState.completed:
                  return ExtendedImage(
                    image: state.imageProvider,
                    width: 240,
                    height: 240,
                  );
              }
            },
          ),
        ),
      );
    }
  }
}

class _PokeDetailViewModel {
  _PokeDetailViewModel({
    required this.state,
  });

  final PokeDetailState state;
}
