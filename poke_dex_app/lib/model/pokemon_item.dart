import 'package:poke_api_client/extension/string_extension.dart';
import 'package:poke_api_client/response/common/named_api_resource.dart';

class PokemonItem {
  const PokemonItem({
    required this.index,
    required this.imageUrl,
  });

  factory PokemonItem.from(NamedApiResource namedApiResource) {
    return PokemonItem(
      index: namedApiResource.url.getIndex(),
      imageUrl: namedApiResource.url.getImageUrl(),
    );
  }

  final int index;
  final String imageUrl;
}
