import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poke_api_client/response/common/named_api_resource.dart';

part 'description.freezed.dart';
part 'description.g.dart';

@freezed
class Description with _$Description {
  const factory Description(
    @JsonKey(name: 'description') String description,
    @JsonKey(name: 'language') NamedApiResource language,
  ) = _Description;

  factory Description.fromJson(Map<String, dynamic> json) =>
      _$DescriptionFromJson(json);
}
