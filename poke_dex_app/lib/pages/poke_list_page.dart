import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:poke_dex_app/actions/poke_list_actions.dart';
import 'package:poke_dex_app/gen/colors.gen.dart';
import 'package:poke_dex_app/pages/loading_view.dart';
import 'package:poke_dex_app/pages/poke_grid_view.dart';
import 'package:poke_dex_app/states/poke_dex_app_state.dart';
import 'package:poke_dex_app/states/poke_list_state.dart';

class PokeListPage extends StatelessWidget {
  const PokeListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorName.background,
      body: StoreConnector<PokeDexAppState, _PokeListPageViewModel>(
        onInit: (store) {
          store.dispatch(
            FetchPokeListAction(
              offset: 0,
              limit: 20,
            ),
          );
        },
        converter: (store) => _PokeListPageViewModel(
          state: store.state.pokeListState,
          onRefresh: () {
            store.dispatch(
              FetchPokeListAction(
                offset: 0,
                limit: 20,
                isRefresh: true,
              ),
            );
          },
        ),
        builder: (
          BuildContext context,
          _PokeListPageViewModel viewModel,
        ) {
          return Stack(
            children: [
              _buildBody(
                viewModel.state,
                viewModel.onRefresh,
              ),
              if (viewModel.state.loadingState.isLoading) const LoadingView(),
            ],
          );
        },
      ),
    );
  }

  Widget _buildBody(
    PokeListState state,
    void Function() onRefresh,
  ) {
    return RefreshIndicator(
      onRefresh: () async {
        onRefresh();
      },
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: const Text('PokeDex'),
            pinned: state.errorState.apiErrorState != null,
          ),
          if (state.errorState.apiErrorState != null)
            SliverFillRemaining(
              child: Center(
                child: Text(
                  'Error : ${state.errorState.apiErrorState?.apiError}',
                  style: const TextStyle(
                    color: ColorName.white,
                  ),
                ),
              ),
            ),
          if (state.errorState.apiErrorState == null)
            SliverPadding(
              padding: const EdgeInsets.all(6),
              sliver: PokeGridView(
                pokemonList: state.pokemonList,
              ),
            ),
        ],
      ),
    );
  }
}

class _PokeListPageViewModel {
  _PokeListPageViewModel({
    required this.state,
    required this.onRefresh,
  });

  final PokeListState state;
  final void Function() onRefresh;
}
