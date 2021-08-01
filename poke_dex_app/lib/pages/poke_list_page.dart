import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:poke_dex_app/actions/poke_list_actions.dart';
import 'package:poke_dex_app/gen/assets.gen.dart';
import 'package:poke_dex_app/gen/colors.gen.dart';
import 'package:poke_dex_app/pages/loading_view.dart';
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
    if (state.errorState.apiErrorState != null) {
      return Center(
        child: Text(
          'Error : ${state.errorState.apiErrorState?.apiError}',
        ),
      );
    } else {
      return /*RefreshIndicator(
        onRefresh: () async {
          onRefresh();
        },
        child:*/
          CustomScrollView(
        slivers: [
          const SliverAppBar(
            title: Text('PokeDexApp'),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(6),
            sliver: SliverGrid(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisSpacing: 6,
                mainAxisSpacing: 6,
                crossAxisCount: 2,
              ),
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return _PokemonItem(
                    pokeName: state.pokemonList[index].name,
                    imageUrl: state.pokemonList[index].getImageUrl(),
                  );
                },
                childCount: state.pokemonList.length,
              ),
            ),
          ),
        ],
      );
    }
  }
}

class _PokemonItem extends StatelessWidget {
  const _PokemonItem({
    Key? key,
    required this.pokeName,
    required this.imageUrl,
    this.imageWidth = 120,
    this.imageHeight = 120,
  }) : super(key: key);

  final String pokeName;
  final String imageUrl;
  final double imageWidth;
  final double imageHeight;

  @override
  Widget build(BuildContext context) {
    return ExtendedImage.network(
      imageUrl,
      width: imageWidth,
      height: imageHeight,
      fit: BoxFit.fill,
      cache: true,
      loadStateChanged: (state) {
        switch (state.extendedImageLoadState) {
          case LoadState.loading:
            return Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: ColorName.gray21,
                ),
                borderRadius: BorderRadius.circular(14),
                color: ColorName.gray21,
              ),
              child: Image.asset(
                Assets.images.monsterBall.path,
              ),
            );
          case LoadState.failed:
            break;
          case LoadState.completed:
            return Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: ColorName.gray21,
                ),
                borderRadius: BorderRadius.circular(14),
                color: ColorName.gray21,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ExtendedRawImage(
                    image: state.extendedImageInfo?.image,
                    width: imageWidth,
                    height: imageHeight,
                  ),
                  Text(
                    pokeName,
                    style: const TextStyle(
                      color: ColorName.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            );
        }
      },
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
