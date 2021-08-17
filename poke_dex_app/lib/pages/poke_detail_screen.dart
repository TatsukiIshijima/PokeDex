import 'package:extended_image/extended_image.dart';
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
      backgroundColor: ColorName.background,
      body: StoreConnector<PokeDexAppState, _PokeDetailViewModel>(
        converter: (store) => _PokeDetailViewModel(
          state: store.state.pokeDetailState,
        ),
        builder: (
          BuildContext context,
          _PokeDetailViewModel viewModel,
        ) {
          final url = viewModel.state.pokemon?.getImageUrl() ?? '';
          // 空文字で画像取得しようとすると Bas State になるためチェック必須
          if (url.isEmpty) {
            return Container();
          }
          return CustomScrollView(
            slivers: [
              SliverAppBar(
                expandedHeight: 300,
                pinned: true,
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
              ),
              SliverPadding(
                padding: const EdgeInsets.only(
                  top: 32,
                  bottom: 24,
                ),
                sliver: SliverToBoxAdapter(
                  child: Text(
                    viewModel.state.pokemon?.name ?? '',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: ColorName.white,
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              )
            ],
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
