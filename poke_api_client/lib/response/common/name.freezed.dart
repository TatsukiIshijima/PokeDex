// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'name.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Name _$NameFromJson(Map<String, dynamic> json) {
  return _Name.fromJson(json);
}

/// @nodoc
class _$NameTearOff {
  const _$NameTearOff();

  _Name call(@JsonKey(name: 'name') String name,
      @JsonKey(name: 'language') NamedApiResource language) {
    return _Name(
      name,
      language,
    );
  }

  Name fromJson(Map<String, Object> json) {
    return Name.fromJson(json);
  }
}

/// @nodoc
const $Name = _$NameTearOff();

/// @nodoc
mixin _$Name {
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'language')
  NamedApiResource get language => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NameCopyWith<Name> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NameCopyWith<$Res> {
  factory $NameCopyWith(Name value, $Res Function(Name) then) =
      _$NameCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'language') NamedApiResource language});

  $NamedApiResourceCopyWith<$Res> get language;
}

/// @nodoc
class _$NameCopyWithImpl<$Res> implements $NameCopyWith<$Res> {
  _$NameCopyWithImpl(this._value, this._then);

  final Name _value;
  // ignore: unused_field
  final $Res Function(Name) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? language = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as NamedApiResource,
    ));
  }

  @override
  $NamedApiResourceCopyWith<$Res> get language {
    return $NamedApiResourceCopyWith<$Res>(_value.language, (value) {
      return _then(_value.copyWith(language: value));
    });
  }
}

/// @nodoc
abstract class _$NameCopyWith<$Res> implements $NameCopyWith<$Res> {
  factory _$NameCopyWith(_Name value, $Res Function(_Name) then) =
      __$NameCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'language') NamedApiResource language});

  @override
  $NamedApiResourceCopyWith<$Res> get language;
}

/// @nodoc
class __$NameCopyWithImpl<$Res> extends _$NameCopyWithImpl<$Res>
    implements _$NameCopyWith<$Res> {
  __$NameCopyWithImpl(_Name _value, $Res Function(_Name) _then)
      : super(_value, (v) => _then(v as _Name));

  @override
  _Name get _value => super._value as _Name;

  @override
  $Res call({
    Object? name = freezed,
    Object? language = freezed,
  }) {
    return _then(_Name(
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as NamedApiResource,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Name implements _Name {
  const _$_Name(@JsonKey(name: 'name') this.name,
      @JsonKey(name: 'language') this.language);

  factory _$_Name.fromJson(Map<String, dynamic> json) =>
      _$_$_NameFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'language')
  final NamedApiResource language;

  @override
  String toString() {
    return 'Name(name: $name, language: $language)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Name &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.language, language) ||
                const DeepCollectionEquality()
                    .equals(other.language, language)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(language);

  @JsonKey(ignore: true)
  @override
  _$NameCopyWith<_Name> get copyWith =>
      __$NameCopyWithImpl<_Name>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_NameToJson(this);
  }
}

abstract class _Name implements Name {
  const factory _Name(@JsonKey(name: 'name') String name,
      @JsonKey(name: 'language') NamedApiResource language) = _$_Name;

  factory _Name.fromJson(Map<String, dynamic> json) = _$_Name.fromJson;

  @override
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'language')
  NamedApiResource get language => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$NameCopyWith<_Name> get copyWith => throw _privateConstructorUsedError;
}
