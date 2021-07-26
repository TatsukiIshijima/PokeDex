import 'package:flutter/material.dart';
import 'package:poke_dex_app/gen/colors.gen.dart';

class PokeDexThemeData {
  static ThemeData themeData() {
    return ThemeData(
      primaryColor: ColorName.colorPrimary,
      primaryColorDark: ColorName.colorPrimaryDark,
      accentColor: ColorName.colorAccent,
      highlightColor: ColorName.colorPrimary,
    );
  }
}
