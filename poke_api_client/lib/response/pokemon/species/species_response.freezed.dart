// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'species_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SpeciesResponse _$SpeciesResponseFromJson(Map<String, dynamic> json) {
  return _SpeciesResponse.fromJson(json);
}

/// @nodoc
class _$SpeciesResponseTearOff {
  const _$SpeciesResponseTearOff();

  _SpeciesResponse call(
      @JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'names') List<Name> names,
      @JsonKey(name: 'flavor_text_entries') List<FlavorText> flavorTextEntries,
      @JsonKey(name: 'form_descriptions') List<Description> formDescriptions,
      @JsonKey(name: 'genera') List<GenusResponse> genera) {
    return _SpeciesResponse(
      id,
      name,
      names,
      flavorTextEntries,
      formDescriptions,
      genera,
    );
  }

  SpeciesResponse fromJson(Map<String, Object> json) {
    return SpeciesResponse.fromJson(json);
  }
}

/// @nodoc
const $SpeciesResponse = _$SpeciesResponseTearOff();

/// @nodoc
mixin _$SpeciesResponse {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'names')
  List<Name> get names => throw _privateConstructorUsedError;
  @JsonKey(name: 'flavor_text_entries')
  List<FlavorText> get flavorTextEntries => throw _privateConstructorUsedError;
  @JsonKey(name: 'form_descriptions')
  List<Description> get formDescriptions => throw _privateConstructorUsedError;
  @JsonKey(name: 'genera')
  List<GenusResponse> get genera => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SpeciesResponseCopyWith<SpeciesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpeciesResponseCopyWith<$Res> {
  factory $SpeciesResponseCopyWith(
          SpeciesResponse value, $Res Function(SpeciesResponse) then) =
      _$SpeciesResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'names') List<Name> names,
      @JsonKey(name: 'flavor_text_entries') List<FlavorText> flavorTextEntries,
      @JsonKey(name: 'form_descriptions') List<Description> formDescriptions,
      @JsonKey(name: 'genera') List<GenusResponse> genera});
}

/// @nodoc
class _$SpeciesResponseCopyWithImpl<$Res>
    implements $SpeciesResponseCopyWith<$Res> {
  _$SpeciesResponseCopyWithImpl(this._value, this._then);

  final SpeciesResponse _value;
  // ignore: unused_field
  final $Res Function(SpeciesResponse) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? names = freezed,
    Object? flavorTextEntries = freezed,
    Object? formDescriptions = freezed,
    Object? genera = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      names: names == freezed
          ? _value.names
          : names // ignore: cast_nullable_to_non_nullable
              as List<Name>,
      flavorTextEntries: flavorTextEntries == freezed
          ? _value.flavorTextEntries
          : flavorTextEntries // ignore: cast_nullable_to_non_nullable
              as List<FlavorText>,
      formDescriptions: formDescriptions == freezed
          ? _value.formDescriptions
          : formDescriptions // ignore: cast_nullable_to_non_nullable
              as List<Description>,
      genera: genera == freezed
          ? _value.genera
          : genera // ignore: cast_nullable_to_non_nullable
              as List<GenusResponse>,
    ));
  }
}

/// @nodoc
abstract class _$SpeciesResponseCopyWith<$Res>
    implements $SpeciesResponseCopyWith<$Res> {
  factory _$SpeciesResponseCopyWith(
          _SpeciesResponse value, $Res Function(_SpeciesResponse) then) =
      __$SpeciesResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'names') List<Name> names,
      @JsonKey(name: 'flavor_text_entries') List<FlavorText> flavorTextEntries,
      @JsonKey(name: 'form_descriptions') List<Description> formDescriptions,
      @JsonKey(name: 'genera') List<GenusResponse> genera});
}

/// @nodoc
class __$SpeciesResponseCopyWithImpl<$Res>
    extends _$SpeciesResponseCopyWithImpl<$Res>
    implements _$SpeciesResponseCopyWith<$Res> {
  __$SpeciesResponseCopyWithImpl(
      _SpeciesResponse _value, $Res Function(_SpeciesResponse) _then)
      : super(_value, (v) => _then(v as _SpeciesResponse));

  @override
  _SpeciesResponse get _value => super._value as _SpeciesResponse;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? names = freezed,
    Object? flavorTextEntries = freezed,
    Object? formDescriptions = freezed,
    Object? genera = freezed,
  }) {
    return _then(_SpeciesResponse(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      names == freezed
          ? _value.names
          : names // ignore: cast_nullable_to_non_nullable
              as List<Name>,
      flavorTextEntries == freezed
          ? _value.flavorTextEntries
          : flavorTextEntries // ignore: cast_nullable_to_non_nullable
              as List<FlavorText>,
      formDescriptions == freezed
          ? _value.formDescriptions
          : formDescriptions // ignore: cast_nullable_to_non_nullable
              as List<Description>,
      genera == freezed
          ? _value.genera
          : genera // ignore: cast_nullable_to_non_nullable
              as List<GenusResponse>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SpeciesResponse implements _SpeciesResponse {
  const _$_SpeciesResponse(
      @JsonKey(name: 'id') this.id,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'names') this.names,
      @JsonKey(name: 'flavor_text_entries') this.flavorTextEntries,
      @JsonKey(name: 'form_descriptions') this.formDescriptions,
      @JsonKey(name: 'genera') this.genera);

  factory _$_SpeciesResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_SpeciesResponseFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'names')
  final List<Name> names;
  @override
  @JsonKey(name: 'flavor_text_entries')
  final List<FlavorText> flavorTextEntries;
  @override
  @JsonKey(name: 'form_descriptions')
  final List<Description> formDescriptions;
  @override
  @JsonKey(name: 'genera')
  final List<GenusResponse> genera;

  @override
  String toString() {
    return 'SpeciesResponse(id: $id, name: $name, names: $names, flavorTextEntries: $flavorTextEntries, formDescriptions: $formDescriptions, genera: $genera)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SpeciesResponse &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.names, names) ||
                const DeepCollectionEquality().equals(other.names, names)) &&
            (identical(other.flavorTextEntries, flavorTextEntries) ||
                const DeepCollectionEquality()
                    .equals(other.flavorTextEntries, flavorTextEntries)) &&
            (identical(other.formDescriptions, formDescriptions) ||
                const DeepCollectionEquality()
                    .equals(other.formDescriptions, formDescriptions)) &&
            (identical(other.genera, genera) ||
                const DeepCollectionEquality().equals(other.genera, genera)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(names) ^
      const DeepCollectionEquality().hash(flavorTextEntries) ^
      const DeepCollectionEquality().hash(formDescriptions) ^
      const DeepCollectionEquality().hash(genera);

  @JsonKey(ignore: true)
  @override
  _$SpeciesResponseCopyWith<_SpeciesResponse> get copyWith =>
      __$SpeciesResponseCopyWithImpl<_SpeciesResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SpeciesResponseToJson(this);
  }
}

abstract class _SpeciesResponse implements SpeciesResponse {
  const factory _SpeciesResponse(
      @JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'names') List<Name> names,
      @JsonKey(name: 'flavor_text_entries') List<FlavorText> flavorTextEntries,
      @JsonKey(name: 'form_descriptions') List<Description> formDescriptions,
      @JsonKey(name: 'genera') List<GenusResponse> genera) = _$_SpeciesResponse;

  factory _SpeciesResponse.fromJson(Map<String, dynamic> json) =
      _$_SpeciesResponse.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'names')
  List<Name> get names => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'flavor_text_entries')
  List<FlavorText> get flavorTextEntries => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'form_descriptions')
  List<Description> get formDescriptions => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'genera')
  List<GenusResponse> get genera => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SpeciesResponseCopyWith<_SpeciesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
