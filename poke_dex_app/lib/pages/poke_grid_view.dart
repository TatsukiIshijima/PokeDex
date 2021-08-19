import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:poke_dex_app/gen/assets.gen.dart';
import 'package:poke_dex_app/gen/colors.gen.dart';
import 'package:poke_dex_app/model/pokemon_item.dart';

class PokeGridView extends StatelessWidget {
  const PokeGridView({
    Key? key,
    required this.pokemonList,
    this.onTap,
  }) : super(key: key);

  final List<PokemonItem> pokemonList;
  final Function(int index)? onTap;

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
          return InkWell(
            onTap: () {
              if (onTap != null) {
                onTap!(index);
              }
            },
            child: _PokemonItem(
              number: pokemonList[index].index,
              imageUrl: pokemonList[index].imageUrl,
            ),
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
    required this.number,
    required this.imageUrl,
    this.imageWidth = 120,
    this.imageHeight = 120,
  }) : super(key: key);

  final String number;
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
            return const _PokemonItemLoading();
          case LoadState.failed:
            // TODO: define failed widget
            return Container();
          case LoadState.completed:
            return _PokemonItemPalette(
              number: number,
              pokeImage: state.imageProvider,
              imageWidth: imageWidth,
              imageHeight: imageHeight,
            );
        }
      },
    );
  }
}

class _PokemonItemPalette extends StatelessWidget {
  const _PokemonItemPalette({
    Key? key,
    required this.pokeImage,
    required this.number,
    required this.imageWidth,
    required this.imageHeight,
  }) : super(key: key);

  final ImageProvider pokeImage;
  final String number;
  final double imageWidth;
  final double imageHeight;

  // Future<PaletteGenerator> _updatePaletteGenerator() async {
  //   return PaletteGenerator.fromImageProvider(
  //     pokeImage,
  //     size: Size(imageWidth, imageHeight),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: ColorName.white,
        ),
        borderRadius: BorderRadius.circular(14),
        color: ColorName.background,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ExtendedImage(
            image: pokeImage,
            width: imageWidth,
            height: imageHeight,
          ),
          Text(
            number,
            style: const TextStyle(
              color: ColorName.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );

    // return FutureBuilder<PaletteGenerator>(
    //   future: _updatePaletteGenerator(),
    //   builder:
    //       (BuildContext context, AsyncSnapshot<PaletteGenerator> snapshot) {
    //     if (snapshot.hasError) {
    //       // TODO: define failed widget.
    //       return Container();
    //     }
    //     final domainColor =
    //         snapshot.data?.dominantColor?.color ?? ColorName.white;
    //     return Container(
    //       decoration: BoxDecoration(
    //         border: Border.all(
    //           color: domainColor,
    //         ),
    //         borderRadius: BorderRadius.circular(14),
    //         color: domainColor,
    //       ),
    //       child: Column(
    //         mainAxisAlignment: MainAxisAlignment.center,
    //         children: [
    //           ExtendedImage(
    //             image: pokeImage,
    //             width: imageWidth,
    //             height: imageHeight,
    //           ),
    //           Text(
    //             pokeName,
    //             style: const TextStyle(
    //               color: ColorName.white,
    //               fontSize: 16,
    //               fontWeight: FontWeight.bold,
    //             ),
    //           ),
    //         ],
    //       ),
    //     );
    //   },
    // );
  }
}

class _PokemonItemLoading extends StatelessWidget {
  const _PokemonItemLoading({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: ColorName.white,
        ),
        borderRadius: BorderRadius.circular(14),
        color: ColorName.black,
      ),
      child: Image.asset(
        Assets.images.monsterBall.path,
      ),
    );
  }
}
