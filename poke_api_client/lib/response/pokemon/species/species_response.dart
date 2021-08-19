import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poke_api_client/response/common/description.dart';
import 'package:poke_api_client/response/common/flavor_text.dart';
import 'package:poke_api_client/response/common/name.dart';
import 'package:poke_api_client/response/pokemon/species/genus_response.dart';

part 'species_response.freezed.dart';
part 'species_response.g.dart';

@freezed
class SpeciesResponse with _$SpeciesResponse {
  const factory SpeciesResponse(
    @JsonKey(name: 'id') int id,
    @JsonKey(name: 'name') String name,
    @JsonKey(name: 'names') List<Name> names,
    @JsonKey(name: 'flavor_text_entries') List<FlavorText> flavorTextEntries,
    @JsonKey(name: 'form_descriptions') List<Description> formDescriptions,
    @JsonKey(name: 'genera') List<GenusResponse> genera,
  ) = _SpeciesResponse;

  factory SpeciesResponse.fromJson(Map<String, dynamic> json) =>
      _$SpeciesResponseFromJson(json);
}
