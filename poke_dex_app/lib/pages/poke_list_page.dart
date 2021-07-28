import 'package:extended_image/extended_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:poke_dex_app/gen/assets.gen.dart';
import 'package:poke_dex_app/gen/colors.gen.dart';

class PokeListPage extends StatelessWidget {
  const PokeListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorName.background,
      body: Container(
        margin: const EdgeInsets.all(6),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 6,
            mainAxisSpacing: 6,
            crossAxisCount: 2,
          ),
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            // TODO : fetch data
            return _PokemonItem(
              pokeName: 'pokeName',
              imageUrl:
                  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/${index + 1}.png',
            );
          },
        ),
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
