// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'pokemon_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PokemonResponse _$PokemonResponseFromJson(Map<String, dynamic> json) {
  return _PokemonResponse.fromJson(json);
}

/// @nodoc
class _$PokemonResponseTearOff {
  const _$PokemonResponseTearOff();

  _PokemonResponse call(
      @JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'height') int height,
      @JsonKey(name: 'weight') int weight,
      @JsonKey(name: 'types') List<PokemonTypeResponse> types,
      @JsonKey(name: 'species') NamedApiResource species) {
    return _PokemonResponse(
      id,
      name,
      height,
      weight,
      types,
      species,
    );
  }

  PokemonResponse fromJson(Map<String, Object> json) {
    return PokemonResponse.fromJson(json);
  }
}

/// @nodoc
const $PokemonResponse = _$PokemonResponseTearOff();

/// @nodoc
mixin _$PokemonResponse {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'height')
  int get height => throw _privateConstructorUsedError;
  @JsonKey(name: 'weight')
  int get weight => throw _privateConstructorUsedError;
  @JsonKey(name: 'types')
  List<PokemonTypeResponse> get types => throw _privateConstructorUsedError;
  @JsonKey(name: 'species')
  NamedApiResource get species => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonResponseCopyWith<PokemonResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonResponseCopyWith<$Res> {
  factory $PokemonResponseCopyWith(
          PokemonResponse value, $Res Function(PokemonResponse) then) =
      _$PokemonResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'height') int height,
      @JsonKey(name: 'weight') int weight,
      @JsonKey(name: 'types') List<PokemonTypeResponse> types,
      @JsonKey(name: 'species') NamedApiResource species});

  $NamedApiResourceCopyWith<$Res> get species;
}

/// @nodoc
class _$PokemonResponseCopyWithImpl<$Res>
    implements $PokemonResponseCopyWith<$Res> {
  _$PokemonResponseCopyWithImpl(this._value, this._then);

  final PokemonResponse _value;
  // ignore: unused_field
  final $Res Function(PokemonResponse) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? height = freezed,
    Object? weight = freezed,
    Object? types = freezed,
    Object? species = freezed,
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
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      weight: weight == freezed
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
      types: types == freezed
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as List<PokemonTypeResponse>,
      species: species == freezed
          ? _value.species
          : species // ignore: cast_nullable_to_non_nullable
              as NamedApiResource,
    ));
  }

  @override
  $NamedApiResourceCopyWith<$Res> get species {
    return $NamedApiResourceCopyWith<$Res>(_value.species, (value) {
      return _then(_value.copyWith(species: value));
    });
  }
}

/// @nodoc
abstract class _$PokemonResponseCopyWith<$Res>
    implements $PokemonResponseCopyWith<$Res> {
  factory _$PokemonResponseCopyWith(
          _PokemonResponse value, $Res Function(_PokemonResponse) then) =
      __$PokemonResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'height') int height,
      @JsonKey(name: 'weight') int weight,
      @JsonKey(name: 'types') List<PokemonTypeResponse> types,
      @JsonKey(name: 'species') NamedApiResource species});

  @override
  $NamedApiResourceCopyWith<$Res> get species;
}

/// @nodoc
class __$PokemonResponseCopyWithImpl<$Res>
    extends _$PokemonResponseCopyWithImpl<$Res>
    implements _$PokemonResponseCopyWith<$Res> {
  __$PokemonResponseCopyWithImpl(
      _PokemonResponse _value, $Res Function(_PokemonResponse) _then)
      : super(_value, (v) => _then(v as _PokemonResponse));

  @override
  _PokemonResponse get _value => super._value as _PokemonResponse;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? height = freezed,
    Object? weight = freezed,
    Object? types = freezed,
    Object? species = freezed,
  }) {
    return _then(_PokemonResponse(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      weight == freezed
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
      types == freezed
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as List<PokemonTypeResponse>,
      species == freezed
          ? _value.species
          : species // ignore: cast_nullable_to_non_nullable
              as NamedApiResource,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PokemonResponse implements _PokemonResponse {
  const _$_PokemonResponse(
      @JsonKey(name: 'id') this.id,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'height') this.height,
      @JsonKey(name: 'weight') this.weight,
      @JsonKey(name: 'types') this.types,
      @JsonKey(name: 'species') this.species);

  factory _$_PokemonResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_PokemonResponseFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'height')
  final int height;
  @override
  @JsonKey(name: 'weight')
  final int weight;
  @override
  @JsonKey(name: 'types')
  final List<PokemonTypeResponse> types;
  @override
  @JsonKey(name: 'species')
  final NamedApiResource species;

  @override
  String toString() {
    return 'PokemonResponse(id: $id, name: $name, height: $height, weight: $weight, types: $types, species: $species)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PokemonResponse &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.height, height) ||
                const DeepCollectionEquality().equals(other.height, height)) &&
            (identical(other.weight, weight) ||
                const DeepCollectionEquality().equals(other.weight, weight)) &&
            (identical(other.types, types) ||
                const DeepCollectionEquality().equals(other.types, types)) &&
            (identical(other.species, species) ||
                const DeepCollectionEquality().equals(other.species, species)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(height) ^
      const DeepCollectionEquality().hash(weight) ^
      const DeepCollectionEquality().hash(types) ^
      const DeepCollectionEquality().hash(species);

  @JsonKey(ignore: true)
  @override
  _$PokemonResponseCopyWith<_PokemonResponse> get copyWith =>
      __$PokemonResponseCopyWithImpl<_PokemonResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PokemonResponseToJson(this);
  }
}

abstract class _PokemonResponse implements PokemonResponse {
  const factory _PokemonResponse(
      @JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'height') int height,
      @JsonKey(name: 'weight') int weight,
      @JsonKey(name: 'types') List<PokemonTypeResponse> types,
      @JsonKey(name: 'species') NamedApiResource species) = _$_PokemonResponse;

  factory _PokemonResponse.fromJson(Map<String, dynamic> json) =
      _$_PokemonResponse.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'height')
  int get height => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'weight')
  int get weight => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'types')
  List<PokemonTypeResponse> get types => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'species')
  NamedApiResource get species => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PokemonResponseCopyWith<_PokemonResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
