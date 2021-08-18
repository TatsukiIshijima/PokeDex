// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'type_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TypeResponse _$TypeResponseFromJson(Map<String, dynamic> json) {
  return _TypeResponse.fromJson(json);
}

/// @nodoc
class _$TypeResponseTearOff {
  const _$TypeResponseTearOff();

  _TypeResponse call(
      @JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'names') List<Name> names) {
    return _TypeResponse(
      id,
      name,
      names,
    );
  }

  TypeResponse fromJson(Map<String, Object> json) {
    return TypeResponse.fromJson(json);
  }
}

/// @nodoc
const $TypeResponse = _$TypeResponseTearOff();

/// @nodoc
mixin _$TypeResponse {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'names')
  List<Name> get names => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TypeResponseCopyWith<TypeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TypeResponseCopyWith<$Res> {
  factory $TypeResponseCopyWith(
          TypeResponse value, $Res Function(TypeResponse) then) =
      _$TypeResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'names') List<Name> names});
}

/// @nodoc
class _$TypeResponseCopyWithImpl<$Res> implements $TypeResponseCopyWith<$Res> {
  _$TypeResponseCopyWithImpl(this._value, this._then);

  final TypeResponse _value;
  // ignore: unused_field
  final $Res Function(TypeResponse) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? names = freezed,
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
    ));
  }
}

/// @nodoc
abstract class _$TypeResponseCopyWith<$Res>
    implements $TypeResponseCopyWith<$Res> {
  factory _$TypeResponseCopyWith(
          _TypeResponse value, $Res Function(_TypeResponse) then) =
      __$TypeResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'names') List<Name> names});
}

/// @nodoc
class __$TypeResponseCopyWithImpl<$Res> extends _$TypeResponseCopyWithImpl<$Res>
    implements _$TypeResponseCopyWith<$Res> {
  __$TypeResponseCopyWithImpl(
      _TypeResponse _value, $Res Function(_TypeResponse) _then)
      : super(_value, (v) => _then(v as _TypeResponse));

  @override
  _TypeResponse get _value => super._value as _TypeResponse;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? names = freezed,
  }) {
    return _then(_TypeResponse(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TypeResponse implements _TypeResponse {
  const _$_TypeResponse(@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'name') this.name, @JsonKey(name: 'names') this.names);

  factory _$_TypeResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_TypeResponseFromJson(json);

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
  String toString() {
    return 'TypeResponse(id: $id, name: $name, names: $names)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TypeResponse &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.names, names) ||
                const DeepCollectionEquality().equals(other.names, names)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(names);

  @JsonKey(ignore: true)
  @override
  _$TypeResponseCopyWith<_TypeResponse> get copyWith =>
      __$TypeResponseCopyWithImpl<_TypeResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TypeResponseToJson(this);
  }
}

abstract class _TypeResponse implements TypeResponse {
  const factory _TypeResponse(
      @JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'names') List<Name> names) = _$_TypeResponse;

  factory _TypeResponse.fromJson(Map<String, dynamic> json) =
      _$_TypeResponse.fromJson;

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
  @JsonKey(ignore: true)
  _$TypeResponseCopyWith<_TypeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
