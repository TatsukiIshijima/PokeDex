// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'pokemon_official_artwork_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PokemonOfficialArtworkResponse _$PokemonOfficialArtworkResponseFromJson(
    Map<String, dynamic> json) {
  return _PokemonOfficialArtworkResponse.fromJson(json);
}

/// @nodoc
class _$PokemonOfficialArtworkResponseTearOff {
  const _$PokemonOfficialArtworkResponseTearOff();

  _PokemonOfficialArtworkResponse call(
      @JsonKey(name: 'front_default') String frontDefault) {
    return _PokemonOfficialArtworkResponse(
      frontDefault,
    );
  }

  PokemonOfficialArtworkResponse fromJson(Map<String, Object> json) {
    return PokemonOfficialArtworkResponse.fromJson(json);
  }
}

/// @nodoc
const $PokemonOfficialArtworkResponse =
    _$PokemonOfficialArtworkResponseTearOff();

/// @nodoc
mixin _$PokemonOfficialArtworkResponse {
  @JsonKey(name: 'front_default')
  String get frontDefault => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonOfficialArtworkResponseCopyWith<PokemonOfficialArtworkResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonOfficialArtworkResponseCopyWith<$Res> {
  factory $PokemonOfficialArtworkResponseCopyWith(
          PokemonOfficialArtworkResponse value,
          $Res Function(PokemonOfficialArtworkResponse) then) =
      _$PokemonOfficialArtworkResponseCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'front_default') String frontDefault});
}

/// @nodoc
class _$PokemonOfficialArtworkResponseCopyWithImpl<$Res>
    implements $PokemonOfficialArtworkResponseCopyWith<$Res> {
  _$PokemonOfficialArtworkResponseCopyWithImpl(this._value, this._then);

  final PokemonOfficialArtworkResponse _value;
  // ignore: unused_field
  final $Res Function(PokemonOfficialArtworkResponse) _then;

  @override
  $Res call({
    Object? frontDefault = freezed,
  }) {
    return _then(_value.copyWith(
      frontDefault: frontDefault == freezed
          ? _value.frontDefault
          : frontDefault // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$PokemonOfficialArtworkResponseCopyWith<$Res>
    implements $PokemonOfficialArtworkResponseCopyWith<$Res> {
  factory _$PokemonOfficialArtworkResponseCopyWith(
          _PokemonOfficialArtworkResponse value,
          $Res Function(_PokemonOfficialArtworkResponse) then) =
      __$PokemonOfficialArtworkResponseCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'front_default') String frontDefault});
}

/// @nodoc
class __$PokemonOfficialArtworkResponseCopyWithImpl<$Res>
    extends _$PokemonOfficialArtworkResponseCopyWithImpl<$Res>
    implements _$PokemonOfficialArtworkResponseCopyWith<$Res> {
  __$PokemonOfficialArtworkResponseCopyWithImpl(
      _PokemonOfficialArtworkResponse _value,
      $Res Function(_PokemonOfficialArtworkResponse) _then)
      : super(_value, (v) => _then(v as _PokemonOfficialArtworkResponse));

  @override
  _PokemonOfficialArtworkResponse get _value =>
      super._value as _PokemonOfficialArtworkResponse;

  @override
  $Res call({
    Object? frontDefault = freezed,
  }) {
    return _then(_PokemonOfficialArtworkResponse(
      frontDefault == freezed
          ? _value.frontDefault
          : frontDefault // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PokemonOfficialArtworkResponse
    implements _PokemonOfficialArtworkResponse {
  const _$_PokemonOfficialArtworkResponse(
      @JsonKey(name: 'front_default') this.frontDefault);

  factory _$_PokemonOfficialArtworkResponse.fromJson(
          Map<String, dynamic> json) =>
      _$_$_PokemonOfficialArtworkResponseFromJson(json);

  @override
  @JsonKey(name: 'front_default')
  final String frontDefault;

  @override
  String toString() {
    return 'PokemonOfficialArtworkResponse(frontDefault: $frontDefault)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PokemonOfficialArtworkResponse &&
            (identical(other.frontDefault, frontDefault) ||
                const DeepCollectionEquality()
                    .equals(other.frontDefault, frontDefault)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(frontDefault);

  @JsonKey(ignore: true)
  @override
  _$PokemonOfficialArtworkResponseCopyWith<_PokemonOfficialArtworkResponse>
      get copyWith => __$PokemonOfficialArtworkResponseCopyWithImpl<
          _PokemonOfficialArtworkResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PokemonOfficialArtworkResponseToJson(this);
  }
}

abstract class _PokemonOfficialArtworkResponse
    implements PokemonOfficialArtworkResponse {
  const factory _PokemonOfficialArtworkResponse(
          @JsonKey(name: 'front_default') String frontDefault) =
      _$_PokemonOfficialArtworkResponse;

  factory _PokemonOfficialArtworkResponse.fromJson(Map<String, dynamic> json) =
      _$_PokemonOfficialArtworkResponse.fromJson;

  @override
  @JsonKey(name: 'front_default')
  String get frontDefault => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PokemonOfficialArtworkResponseCopyWith<_PokemonOfficialArtworkResponse>
      get copyWith => throw _privateConstructorUsedError;
}
