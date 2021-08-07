import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:poke_dex_app/actions/poke_list_actions.dart';
import 'package:poke_dex_app/gen/colors.gen.dart';
import 'package:poke_dex_app/pages/loading_view.dart';
import 'package:poke_dex_app/pages/poke_grid_view.dart';
import 'package:poke_dex_app/states/poke_dex_app_state.dart';
import 'package:poke_dex_app/states/poke_list_state.dart';

class PokeListScreen extends StatelessWidget {
  const PokeListScreen({
    Key? key,
  }) : super(key: key);

  static const _maxPokemonCount = 151;
  static const _defaultLimit = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorName.background,
      body: StoreConnector<PokeDexAppState, _PokeListPageViewModel>(
        onInit: (store) {
          store.dispatch(
            FetchPokeListAction(
              offset: 0,
              limit: _defaultLimit,
            ),
          );
        },
        converter: (store) => _PokeListPageViewModel(
            state: store.state.pokeListState,
            onRefresh: () {
              store.dispatch(
                FetchPokeListAction(
                  offset: 0,
                  limit: _defaultLimit,
                  isRefresh: true,
                ),
              );
            },
            onLoadMore: () {
              if (store.state.pokeListState.loadingState.isLoading) {
                return;
              }
              if (store.state.pokeListState.pokemonList.length >=
                  _maxPokemonCount) {
                return;
              }
              final offset = store.state.pokeListState.offset + 20;
              final limit =
                  offset >= 140 ? _maxPokemonCount - offset : _defaultLimit;
              store.dispatch(
                FetchPokeListAction(
                  offset: offset,
                  limit: limit,
                ),
              );
            }),
        builder: (
          BuildContext context,
          _PokeListPageViewModel viewModel,
        ) {
          return Stack(
            children: [
              _PokeListPageBody(
                pokeListState: viewModel.state,
                onRefresh: viewModel.onRefresh,
                onLoadMore: viewModel.onLoadMore,
              ),
              if (viewModel.state.loadingState.isLoading) const LoadingView(),
            ],
          );
        },
      ),
    );
  }
}

class _PokeListPageBody extends StatefulWidget {
  const _PokeListPageBody({
    required this.pokeListState,
    required this.onRefresh,
    required this.onLoadMore,
  });

  final PokeListState pokeListState;
  final void Function() onRefresh;
  final void Function() onLoadMore;

  @override
  State<StatefulWidget> createState() => _PokeListPageBodyState();
}

class _PokeListPageBodyState extends State<_PokeListPageBody> {
  _PokeListPageBodyState();

  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      final maxScroll = _scrollController.position.maxScrollExtent;
      final currentScroll = _scrollController.position.pixels;
      if (maxScroll - currentScroll <= 100) {
        widget.onLoadMore();
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        widget.onRefresh();
      },
      child: CustomScrollView(
        controller: _scrollController,
        slivers: [
          SliverAppBar(
            title: const Text('PokeDex'),
            pinned: widget.pokeListState.errorState.apiErrorState != null,
          ),
          if (widget.pokeListState.errorState.apiErrorState != null)
            SliverFillRemaining(
              child: Center(
                child: Text(
                  'Error : ${widget.pokeListState.errorState.apiErrorState?.apiError}',
                  style: const TextStyle(
                    color: ColorName.white,
                  ),
                ),
              ),
            ),
          if (widget.pokeListState.errorState.apiErrorState == null)
            SliverPadding(
              padding: const EdgeInsets.all(6),
              sliver: PokeGridView(
                pokemonList: widget.pokeListState.pokemonList,
                onTap: (index) {
                  print('tap index: $index');
                },
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
    required this.onLoadMore,
  });

  final PokeListState state;
  final void Function() onRefresh;
  final void Function() onLoadMore;
}
