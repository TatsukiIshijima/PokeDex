import 'package:poke_api_client/response/pokemon/pokemon/pokemon_response.dart';
import 'package:poke_api_client/response/pokemon/species/species_response.dart';
import 'package:poke_api_client/response/pokemon/types/type_response.dart';
import 'package:poke_dex_app/extension/int_extension.dart';

class PokemonInfo {
  const PokemonInfo({
    required this.name,
    required this.imageUrl,
    required this.classification,
    required this.types,
    required this.height,
    required this.weight,
    required this.description,
  });

  factory PokemonInfo.from(
    PokemonResponse pokemonResponse,
    SpeciesResponse speciesResponse,
    TypeResponse typeResponse,
  ) {
    final name = speciesResponse.names
        .where((name) => name.language.name.contains('ja'))
        .map((name) => name.name)
        .first;
    final classification = speciesResponse.genera
        .where((genus) => genus.language.name.contains('ja'))
        .map((genus) => genus.genus)
        .first;
    final description = speciesResponse.flavorTextEntries
        .where((flavorText) =>
            flavorText.language.name.contains('ja') &&
            flavorText.version.name.contains('shield'))
        .map((flavorText) => flavorText.flavorText)
        .first;
    final types = typeResponse.names
        .where((name) => name.language.name.contains('ja'))
        .map((name) => name.name)
        .toList();

    return PokemonInfo(
      name: name,
      imageUrl: pokemonResponse.sprites.other.officialArtwork.frontDefault,
      classification: classification,
      types: types,
      height: pokemonResponse.height.dmToMeter().toStringAsFixed(1),
      weight: pokemonResponse.weight.hgToKg().toStringAsFixed(1),
      description: description,
    );
  }

  final String name;
  final String imageUrl;
  final String classification;
  final List<String> types;
  final String height;
  final String weight;
  final String description;
}
