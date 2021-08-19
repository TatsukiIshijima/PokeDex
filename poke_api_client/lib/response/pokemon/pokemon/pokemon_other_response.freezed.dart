// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'pokemon_other_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PokemonOtherResponse _$PokemonOtherResponseFromJson(Map<String, dynamic> json) {
  return _PokemonOtherResponse.fromJson(json);
}

/// @nodoc
class _$PokemonOtherResponseTearOff {
  const _$PokemonOtherResponseTearOff();

  _PokemonOtherResponse call(
      @JsonKey(name: 'official-artwork')
          PokemonOfficialArtworkResponse officialArtwork) {
    return _PokemonOtherResponse(
      officialArtwork,
    );
  }

  PokemonOtherResponse fromJson(Map<String, Object> json) {
    return PokemonOtherResponse.fromJson(json);
  }
}

/// @nodoc
const $PokemonOtherResponse = _$PokemonOtherResponseTearOff();

/// @nodoc
mixin _$PokemonOtherResponse {
  @JsonKey(name: 'official-artwork')
  PokemonOfficialArtworkResponse get officialArtwork =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonOtherResponseCopyWith<PokemonOtherResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonOtherResponseCopyWith<$Res> {
  factory $PokemonOtherResponseCopyWith(PokemonOtherResponse value,
          $Res Function(PokemonOtherResponse) then) =
      _$PokemonOtherResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'official-artwork')
          PokemonOfficialArtworkResponse officialArtwork});

  $PokemonOfficialArtworkResponseCopyWith<$Res> get officialArtwork;
}

/// @nodoc
class _$PokemonOtherResponseCopyWithImpl<$Res>
    implements $PokemonOtherResponseCopyWith<$Res> {
  _$PokemonOtherResponseCopyWithImpl(this._value, this._then);

  final PokemonOtherResponse _value;
  // ignore: unused_field
  final $Res Function(PokemonOtherResponse) _then;

  @override
  $Res call({
    Object? officialArtwork = freezed,
  }) {
    return _then(_value.copyWith(
      officialArtwork: officialArtwork == freezed
          ? _value.officialArtwork
          : officialArtwork // ignore: cast_nullable_to_non_nullable
              as PokemonOfficialArtworkResponse,
    ));
  }

  @override
  $PokemonOfficialArtworkResponseCopyWith<$Res> get officialArtwork {
    return $PokemonOfficialArtworkResponseCopyWith<$Res>(_value.officialArtwork,
        (value) {
      return _then(_value.copyWith(officialArtwork: value));
    });
  }
}

/// @nodoc
abstract class _$PokemonOtherResponseCopyWith<$Res>
    implements $PokemonOtherResponseCopyWith<$Res> {
  factory _$PokemonOtherResponseCopyWith(_PokemonOtherResponse value,
          $Res Function(_PokemonOtherResponse) then) =
      __$PokemonOtherResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'official-artwork')
          PokemonOfficialArtworkResponse officialArtwork});

  @override
  $PokemonOfficialArtworkResponseCopyWith<$Res> get officialArtwork;
}

/// @nodoc
class __$PokemonOtherResponseCopyWithImpl<$Res>
    extends _$PokemonOtherResponseCopyWithImpl<$Res>
    implements _$PokemonOtherResponseCopyWith<$Res> {
  __$PokemonOtherResponseCopyWithImpl(
      _PokemonOtherResponse _value, $Res Function(_PokemonOtherResponse) _then)
      : super(_value, (v) => _then(v as _PokemonOtherResponse));

  @override
  _PokemonOtherResponse get _value => super._value as _PokemonOtherResponse;

  @override
  $Res call({
    Object? officialArtwork = freezed,
  }) {
    return _then(_PokemonOtherResponse(
      officialArtwork == freezed
          ? _value.officialArtwork
          : officialArtwork // ignore: cast_nullable_to_non_nullable
              as PokemonOfficialArtworkResponse,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PokemonOtherResponse implements _PokemonOtherResponse {
  const _$_PokemonOtherResponse(
      @JsonKey(name: 'official-artwork') this.officialArtwork);

  factory _$_PokemonOtherResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_PokemonOtherResponseFromJson(json);

  @override
  @JsonKey(name: 'official-artwork')
  final PokemonOfficialArtworkResponse officialArtwork;

  @override
  String toString() {
    return 'PokemonOtherResponse(officialArtwork: $officialArtwork)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PokemonOtherResponse &&
            (identical(other.officialArtwork, officialArtwork) ||
                const DeepCollectionEquality()
                    .equals(other.officialArtwork, officialArtwork)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(officialArtwork);

  @JsonKey(ignore: true)
  @override
  _$PokemonOtherResponseCopyWith<_PokemonOtherResponse> get copyWith =>
      __$PokemonOtherResponseCopyWithImpl<_PokemonOtherResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PokemonOtherResponseToJson(this);
  }
}

abstract class _PokemonOtherResponse implements PokemonOtherResponse {
  const factory _PokemonOtherResponse(
          @JsonKey(name: 'official-artwork')
              PokemonOfficialArtworkResponse officialArtwork) =
      _$_PokemonOtherResponse;

  factory _PokemonOtherResponse.fromJson(Map<String, dynamic> json) =
      _$_PokemonOtherResponse.fromJson;

  @override
  @JsonKey(name: 'official-artwork')
  PokemonOfficialArtworkResponse get officialArtwork =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PokemonOtherResponseCopyWith<_PokemonOtherResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
