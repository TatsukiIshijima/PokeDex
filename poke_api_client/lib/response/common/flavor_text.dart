import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poke_api_client/response/common/named_api_resource.dart';

part 'flavor_text.freezed.dart';
part 'flavor_text.g.dart';

@freezed
class FlavorText with _$FlavorText {
  const factory FlavorText(
    @JsonKey(name: 'flavor_text') String flavorText,
    @JsonKey(name: 'language') NamedApiResource language,
    @JsonKey(name: 'version') NamedApiResource version,
  ) = _FlavorText;

  factory FlavorText.fromJson(Map<String, dynamic> json) =>
      _$FlavorTextFromJson(json);
}
