import 'package:flutter/material.dart';
import 'package:poke_dex_app/pages/poke_list_page.dart';
import 'package:poke_dex_app/themes/poke_dex_theme_data.dart';

void main() {
  runApp(PokeDexApp());
}

class PokeDexApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: PokeDexThemeData.themeData(),
      home: const PokeListPage(),
    );
  }
}
