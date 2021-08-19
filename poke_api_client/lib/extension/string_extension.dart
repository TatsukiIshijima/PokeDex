extension StringExtension on String {
  int getIndex() {
    final elements = split(RegExp(r'/'));
    final index = elements
      ..removeRange(0, elements.length - 2)
      ..last;
    return int.parse(index.join());
  }

  String getImageUrl() {
    final index = getIndex();
    return 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/$index.png';
  }
}
