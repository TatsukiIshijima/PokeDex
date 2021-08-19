// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'pokemon_sprite_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PokemonSpriteResponse _$PokemonSpriteResponseFromJson(
    Map<String, dynamic> json) {
  return _PokemonSpriteResponse.fromJson(json);
}

/// @nodoc
class _$PokemonSpriteResponseTearOff {
  const _$PokemonSpriteResponseTearOff();

  _PokemonSpriteResponse call(
      @JsonKey(name: 'other') PokemonOtherResponse other) {
    return _PokemonSpriteResponse(
      other,
    );
  }

  PokemonSpriteResponse fromJson(Map<String, Object> json) {
    return PokemonSpriteResponse.fromJson(json);
  }
}

/// @nodoc
const $PokemonSpriteResponse = _$PokemonSpriteResponseTearOff();

/// @nodoc
mixin _$PokemonSpriteResponse {
  @JsonKey(name: 'other')
  PokemonOtherResponse get other => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonSpriteResponseCopyWith<PokemonSpriteResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonSpriteResponseCopyWith<$Res> {
  factory $PokemonSpriteResponseCopyWith(PokemonSpriteResponse value,
          $Res Function(PokemonSpriteResponse) then) =
      _$PokemonSpriteResponseCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'other') PokemonOtherResponse other});

  $PokemonOtherResponseCopyWith<$Res> get other;
}

/// @nodoc
class _$PokemonSpriteResponseCopyWithImpl<$Res>
    implements $PokemonSpriteResponseCopyWith<$Res> {
  _$PokemonSpriteResponseCopyWithImpl(this._value, this._then);

  final PokemonSpriteResponse _value;
  // ignore: unused_field
  final $Res Function(PokemonSpriteResponse) _then;

  @override
  $Res call({
    Object? other = freezed,
  }) {
    return _then(_value.copyWith(
      other: other == freezed
          ? _value.other
          : other // ignore: cast_nullable_to_non_nullable
              as PokemonOtherResponse,
    ));
  }

  @override
  $PokemonOtherResponseCopyWith<$Res> get other {
    return $PokemonOtherResponseCopyWith<$Res>(_value.other, (value) {
      return _then(_value.copyWith(other: value));
    });
  }
}

/// @nodoc
abstract class _$PokemonSpriteResponseCopyWith<$Res>
    implements $PokemonSpriteResponseCopyWith<$Res> {
  factory _$PokemonSpriteResponseCopyWith(_PokemonSpriteResponse value,
          $Res Function(_PokemonSpriteResponse) then) =
      __$PokemonSpriteResponseCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'other') PokemonOtherResponse other});

  @override
  $PokemonOtherResponseCopyWith<$Res> get other;
}

/// @nodoc
class __$PokemonSpriteResponseCopyWithImpl<$Res>
    extends _$PokemonSpriteResponseCopyWithImpl<$Res>
    implements _$PokemonSpriteResponseCopyWith<$Res> {
  __$PokemonSpriteResponseCopyWithImpl(_PokemonSpriteResponse _value,
      $Res Function(_PokemonSpriteResponse) _then)
      : super(_value, (v) => _then(v as _PokemonSpriteResponse));

  @override
  _PokemonSpriteResponse get _value => super._value as _PokemonSpriteResponse;

  @override
  $Res call({
    Object? other = freezed,
  }) {
    return _then(_PokemonSpriteResponse(
      other == freezed
          ? _value.other
          : other // ignore: cast_nullable_to_non_nullable
              as PokemonOtherResponse,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PokemonSpriteResponse implements _PokemonSpriteResponse {
  const _$_PokemonSpriteResponse(@JsonKey(name: 'other') this.other);

  factory _$_PokemonSpriteResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_PokemonSpriteResponseFromJson(json);

  @override
  @JsonKey(name: 'other')
  final PokemonOtherResponse other;

  @override
  String toString() {
    return 'PokemonSpriteResponse(other: $other)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PokemonSpriteResponse &&
            (identical(other.other, this.other) ||
                const DeepCollectionEquality()
                    .equals(other.other, this.other)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(other);

  @JsonKey(ignore: true)
  @override
  _$PokemonSpriteResponseCopyWith<_PokemonSpriteResponse> get copyWith =>
      __$PokemonSpriteResponseCopyWithImpl<_PokemonSpriteResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PokemonSpriteResponseToJson(this);
  }
}

abstract class _PokemonSpriteResponse implements PokemonSpriteResponse {
  const factory _PokemonSpriteResponse(
          @JsonKey(name: 'other') PokemonOtherResponse other) =
      _$_PokemonSpriteResponse;

  factory _PokemonSpriteResponse.fromJson(Map<String, dynamic> json) =
      _$_PokemonSpriteResponse.fromJson;

  @override
  @JsonKey(name: 'other')
  PokemonOtherResponse get other => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PokemonSpriteResponseCopyWith<_PokemonSpriteResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
