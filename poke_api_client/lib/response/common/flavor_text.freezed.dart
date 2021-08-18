// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'flavor_text.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FlavorText _$FlavorTextFromJson(Map<String, dynamic> json) {
  return _FlavorText.fromJson(json);
}

/// @nodoc
class _$FlavorTextTearOff {
  const _$FlavorTextTearOff();

  _FlavorText call(
      @JsonKey(name: 'flavor_text') String flavorText,
      @JsonKey(name: 'language') NamedApiResource language,
      @JsonKey(name: 'version') NamedApiResource version) {
    return _FlavorText(
      flavorText,
      language,
      version,
    );
  }

  FlavorText fromJson(Map<String, Object> json) {
    return FlavorText.fromJson(json);
  }
}

/// @nodoc
const $FlavorText = _$FlavorTextTearOff();

/// @nodoc
mixin _$FlavorText {
  @JsonKey(name: 'flavor_text')
  String get flavorText => throw _privateConstructorUsedError;
  @JsonKey(name: 'language')
  NamedApiResource get language => throw _privateConstructorUsedError;
  @JsonKey(name: 'version')
  NamedApiResource get version => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FlavorTextCopyWith<FlavorText> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlavorTextCopyWith<$Res> {
  factory $FlavorTextCopyWith(
          FlavorText value, $Res Function(FlavorText) then) =
      _$FlavorTextCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'flavor_text') String flavorText,
      @JsonKey(name: 'language') NamedApiResource language,
      @JsonKey(name: 'version') NamedApiResource version});

  $NamedApiResourceCopyWith<$Res> get language;
  $NamedApiResourceCopyWith<$Res> get version;
}

/// @nodoc
class _$FlavorTextCopyWithImpl<$Res> implements $FlavorTextCopyWith<$Res> {
  _$FlavorTextCopyWithImpl(this._value, this._then);

  final FlavorText _value;
  // ignore: unused_field
  final $Res Function(FlavorText) _then;

  @override
  $Res call({
    Object? flavorText = freezed,
    Object? language = freezed,
    Object? version = freezed,
  }) {
    return _then(_value.copyWith(
      flavorText: flavorText == freezed
          ? _value.flavorText
          : flavorText // ignore: cast_nullable_to_non_nullable
              as String,
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as NamedApiResource,
      version: version == freezed
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as NamedApiResource,
    ));
  }

  @override
  $NamedApiResourceCopyWith<$Res> get language {
    return $NamedApiResourceCopyWith<$Res>(_value.language, (value) {
      return _then(_value.copyWith(language: value));
    });
  }

  @override
  $NamedApiResourceCopyWith<$Res> get version {
    return $NamedApiResourceCopyWith<$Res>(_value.version, (value) {
      return _then(_value.copyWith(version: value));
    });
  }
}

/// @nodoc
abstract class _$FlavorTextCopyWith<$Res> implements $FlavorTextCopyWith<$Res> {
  factory _$FlavorTextCopyWith(
          _FlavorText value, $Res Function(_FlavorText) then) =
      __$FlavorTextCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'flavor_text') String flavorText,
      @JsonKey(name: 'language') NamedApiResource language,
      @JsonKey(name: 'version') NamedApiResource version});

  @override
  $NamedApiResourceCopyWith<$Res> get language;
  @override
  $NamedApiResourceCopyWith<$Res> get version;
}

/// @nodoc
class __$FlavorTextCopyWithImpl<$Res> extends _$FlavorTextCopyWithImpl<$Res>
    implements _$FlavorTextCopyWith<$Res> {
  __$FlavorTextCopyWithImpl(
      _FlavorText _value, $Res Function(_FlavorText) _then)
      : super(_value, (v) => _then(v as _FlavorText));

  @override
  _FlavorText get _value => super._value as _FlavorText;

  @override
  $Res call({
    Object? flavorText = freezed,
    Object? language = freezed,
    Object? version = freezed,
  }) {
    return _then(_FlavorText(
      flavorText == freezed
          ? _value.flavorText
          : flavorText // ignore: cast_nullable_to_non_nullable
              as String,
      language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as NamedApiResource,
      version == freezed
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as NamedApiResource,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FlavorText implements _FlavorText {
  const _$_FlavorText(
      @JsonKey(name: 'flavor_text') this.flavorText,
      @JsonKey(name: 'language') this.language,
      @JsonKey(name: 'version') this.version);

  factory _$_FlavorText.fromJson(Map<String, dynamic> json) =>
      _$_$_FlavorTextFromJson(json);

  @override
  @JsonKey(name: 'flavor_text')
  final String flavorText;
  @override
  @JsonKey(name: 'language')
  final NamedApiResource language;
  @override
  @JsonKey(name: 'version')
  final NamedApiResource version;

  @override
  String toString() {
    return 'FlavorText(flavorText: $flavorText, language: $language, version: $version)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FlavorText &&
            (identical(other.flavorText, flavorText) ||
                const DeepCollectionEquality()
                    .equals(other.flavorText, flavorText)) &&
            (identical(other.language, language) ||
                const DeepCollectionEquality()
                    .equals(other.language, language)) &&
            (identical(other.version, version) ||
                const DeepCollectionEquality().equals(other.version, version)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(flavorText) ^
      const DeepCollectionEquality().hash(language) ^
      const DeepCollectionEquality().hash(version);

  @JsonKey(ignore: true)
  @override
  _$FlavorTextCopyWith<_FlavorText> get copyWith =>
      __$FlavorTextCopyWithImpl<_FlavorText>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_FlavorTextToJson(this);
  }
}

abstract class _FlavorText implements FlavorText {
  const factory _FlavorText(
      @JsonKey(name: 'flavor_text') String flavorText,
      @JsonKey(name: 'language') NamedApiResource language,
      @JsonKey(name: 'version') NamedApiResource version) = _$_FlavorText;

  factory _FlavorText.fromJson(Map<String, dynamic> json) =
      _$_FlavorText.fromJson;

  @override
  @JsonKey(name: 'flavor_text')
  String get flavorText => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'language')
  NamedApiResource get language => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'version')
  NamedApiResource get version => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FlavorTextCopyWith<_FlavorText> get copyWith =>
      throw _privateConstructorUsedError;
}
