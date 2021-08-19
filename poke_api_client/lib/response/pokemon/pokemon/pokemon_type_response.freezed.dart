// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'pokemon_type_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PokemonTypeResponse _$PokemonTypeResponseFromJson(Map<String, dynamic> json) {
  return _PokemonTypeResponse.fromJson(json);
}

/// @nodoc
class _$PokemonTypeResponseTearOff {
  const _$PokemonTypeResponseTearOff();

  _PokemonTypeResponse call(@JsonKey(name: 'slot') int slot,
      @JsonKey(name: 'type') NamedApiResource type) {
    return _PokemonTypeResponse(
      slot,
      type,
    );
  }

  PokemonTypeResponse fromJson(Map<String, Object> json) {
    return PokemonTypeResponse.fromJson(json);
  }
}

/// @nodoc
const $PokemonTypeResponse = _$PokemonTypeResponseTearOff();

/// @nodoc
mixin _$PokemonTypeResponse {
  @JsonKey(name: 'slot')
  int get slot => throw _privateConstructorUsedError;
  @JsonKey(name: 'type')
  NamedApiResource get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonTypeResponseCopyWith<PokemonTypeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonTypeResponseCopyWith<$Res> {
  factory $PokemonTypeResponseCopyWith(
          PokemonTypeResponse value, $Res Function(PokemonTypeResponse) then) =
      _$PokemonTypeResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'slot') int slot,
      @JsonKey(name: 'type') NamedApiResource type});

  $NamedApiResourceCopyWith<$Res> get type;
}

/// @nodoc
class _$PokemonTypeResponseCopyWithImpl<$Res>
    implements $PokemonTypeResponseCopyWith<$Res> {
  _$PokemonTypeResponseCopyWithImpl(this._value, this._then);

  final PokemonTypeResponse _value;
  // ignore: unused_field
  final $Res Function(PokemonTypeResponse) _then;

  @override
  $Res call({
    Object? slot = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      slot: slot == freezed
          ? _value.slot
          : slot // ignore: cast_nullable_to_non_nullable
              as int,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as NamedApiResource,
    ));
  }

  @override
  $NamedApiResourceCopyWith<$Res> get type {
    return $NamedApiResourceCopyWith<$Res>(_value.type, (value) {
      return _then(_value.copyWith(type: value));
    });
  }
}

/// @nodoc
abstract class _$PokemonTypeResponseCopyWith<$Res>
    implements $PokemonTypeResponseCopyWith<$Res> {
  factory _$PokemonTypeResponseCopyWith(_PokemonTypeResponse value,
          $Res Function(_PokemonTypeResponse) then) =
      __$PokemonTypeResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'slot') int slot,
      @JsonKey(name: 'type') NamedApiResource type});

  @override
  $NamedApiResourceCopyWith<$Res> get type;
}

/// @nodoc
class __$PokemonTypeResponseCopyWithImpl<$Res>
    extends _$PokemonTypeResponseCopyWithImpl<$Res>
    implements _$PokemonTypeResponseCopyWith<$Res> {
  __$PokemonTypeResponseCopyWithImpl(
      _PokemonTypeResponse _value, $Res Function(_PokemonTypeResponse) _then)
      : super(_value, (v) => _then(v as _PokemonTypeResponse));

  @override
  _PokemonTypeResponse get _value => super._value as _PokemonTypeResponse;

  @override
  $Res call({
    Object? slot = freezed,
    Object? type = freezed,
  }) {
    return _then(_PokemonTypeResponse(
      slot == freezed
          ? _value.slot
          : slot // ignore: cast_nullable_to_non_nullable
              as int,
      type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as NamedApiResource,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PokemonTypeResponse implements _PokemonTypeResponse {
  const _$_PokemonTypeResponse(
      @JsonKey(name: 'slot') this.slot, @JsonKey(name: 'type') this.type);

  factory _$_PokemonTypeResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_PokemonTypeResponseFromJson(json);

  @override
  @JsonKey(name: 'slot')
  final int slot;
  @override
  @JsonKey(name: 'type')
  final NamedApiResource type;

  @override
  String toString() {
    return 'PokemonTypeResponse(slot: $slot, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PokemonTypeResponse &&
            (identical(other.slot, slot) ||
                const DeepCollectionEquality().equals(other.slot, slot)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(slot) ^
      const DeepCollectionEquality().hash(type);

  @JsonKey(ignore: true)
  @override
  _$PokemonTypeResponseCopyWith<_PokemonTypeResponse> get copyWith =>
      __$PokemonTypeResponseCopyWithImpl<_PokemonTypeResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PokemonTypeResponseToJson(this);
  }
}

abstract class _PokemonTypeResponse implements PokemonTypeResponse {
  const factory _PokemonTypeResponse(@JsonKey(name: 'slot') int slot,
      @JsonKey(name: 'type') NamedApiResource type) = _$_PokemonTypeResponse;

  factory _PokemonTypeResponse.fromJson(Map<String, dynamic> json) =
      _$_PokemonTypeResponse.fromJson;

  @override
  @JsonKey(name: 'slot')
  int get slot => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'type')
  NamedApiResource get type => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PokemonTypeResponseCopyWith<_PokemonTypeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
