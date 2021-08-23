import 'package:flutter/material.dart';
import 'package:poke_dex_app/gen/colors.gen.dart';

extension StringExtension on String {
  Color toTypeColor() {
    switch (this) {
      case 'むし':
        return ColorName.bug;
      case 'あく':
        return ColorName.dark;
      case 'ドラゴン':
        return ColorName.dragon;
      case 'でんき':
        return ColorName.electric;
      case 'フェアリー':
        return ColorName.fairy;
      case 'かくとう':
        return ColorName.fighting;
      case 'ほのお':
        return ColorName.fire;
      case 'ひこう':
        return ColorName.flying;
      case 'ゴースト':
        return ColorName.ghost;
      case 'ノーマル':
        return ColorName.gray21;
      case 'くさ':
        return ColorName.grass;
      case 'じめん':
        return ColorName.ground;
      case 'こおり':
        return ColorName.ice;
      case 'どく':
        return ColorName.poison;
      case 'エスパー':
        return ColorName.psychic;
      case 'いわ':
        return ColorName.rock;
      case 'はがね':
        return ColorName.steel;
      case 'みず':
        return ColorName.water;
      default:
        return ColorName.black;
    }
  }
}
