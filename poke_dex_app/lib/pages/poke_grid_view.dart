import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:poke_api_client/response/pokemon/pokemon_response.dart';
import 'package:poke_dex_app/gen/assets.gen.dart';
import 'package:poke_dex_app/gen/colors.gen.dart';

class PokeGridView extends StatelessWidget {
  const PokeGridView({
    Key? key,
    required this.pokemonList,
  }) : super(key: key);

  final List<PokemonResponse> pokemonList;

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisSpacing: 6,
        mainAxisSpacing: 6,
        crossAxisCount: 2,
      ),
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return _PokemonItem(
            pokeName: pokemonList[index].name,
            imageUrl: pokemonList[index].getImageUrl(),
          );
        },
        childCount: pokemonList.length,
      ),
    );
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
