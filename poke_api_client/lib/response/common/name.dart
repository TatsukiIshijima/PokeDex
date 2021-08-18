import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poke_api_client/response/common/named_api_resource.dart';

part 'name.freezed.dart';
part 'name.g.dart';

@freezed
class Name with _$Name {
  const factory Name(
    @JsonKey(name: 'name') String name,
    @JsonKey(name: 'language') NamedApiResource language,
  ) = _Name;

  factory Name.fromJson(Map<String, dynamic> json) => _$NameFromJson(json);
}
