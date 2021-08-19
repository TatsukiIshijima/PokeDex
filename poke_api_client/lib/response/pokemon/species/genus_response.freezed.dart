// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'genus_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GenusResponse _$GenusResponseFromJson(Map<String, dynamic> json) {
  return _GenusResponse.fromJson(json);
}

/// @nodoc
class _$GenusResponseTearOff {
  const _$GenusResponseTearOff();

  _GenusResponse call(@JsonKey(name: 'genus') String genus,
      @JsonKey(name: 'language') NamedApiResource language) {
    return _GenusResponse(
      genus,
      language,
    );
  }

  GenusResponse fromJson(Map<String, Object> json) {
    return GenusResponse.fromJson(json);
  }
}

/// @nodoc
const $GenusResponse = _$GenusResponseTearOff();

/// @nodoc
mixin _$GenusResponse {
  @JsonKey(name: 'genus')
  String get genus => throw _privateConstructorUsedError;
  @JsonKey(name: 'language')
  NamedApiResource get language => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GenusResponseCopyWith<GenusResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenusResponseCopyWith<$Res> {
  factory $GenusResponseCopyWith(
          GenusResponse value, $Res Function(GenusResponse) then) =
      _$GenusResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'genus') String genus,
      @JsonKey(name: 'language') NamedApiResource language});

  $NamedApiResourceCopyWith<$Res> get language;
}

/// @nodoc
class _$GenusResponseCopyWithImpl<$Res>
    implements $GenusResponseCopyWith<$Res> {
  _$GenusResponseCopyWithImpl(this._value, this._then);

  final GenusResponse _value;
  // ignore: unused_field
  final $Res Function(GenusResponse) _then;

  @override
  $Res call({
    Object? genus = freezed,
    Object? language = freezed,
  }) {
    return _then(_value.copyWith(
      genus: genus == freezed
          ? _value.genus
          : genus // ignore: cast_nullable_to_non_nullable
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
abstract class _$GenusResponseCopyWith<$Res>
    implements $GenusResponseCopyWith<$Res> {
  factory _$GenusResponseCopyWith(
          _GenusResponse value, $Res Function(_GenusResponse) then) =
      __$GenusResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'genus') String genus,
      @JsonKey(name: 'language') NamedApiResource language});

  @override
  $NamedApiResourceCopyWith<$Res> get language;
}

/// @nodoc
class __$GenusResponseCopyWithImpl<$Res>
    extends _$GenusResponseCopyWithImpl<$Res>
    implements _$GenusResponseCopyWith<$Res> {
  __$GenusResponseCopyWithImpl(
      _GenusResponse _value, $Res Function(_GenusResponse) _then)
      : super(_value, (v) => _then(v as _GenusResponse));

  @override
  _GenusResponse get _value => super._value as _GenusResponse;

  @override
  $Res call({
    Object? genus = freezed,
    Object? language = freezed,
  }) {
    return _then(_GenusResponse(
      genus == freezed
          ? _value.genus
          : genus // ignore: cast_nullable_to_non_nullable
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
class _$_GenusResponse implements _GenusResponse {
  const _$_GenusResponse(@JsonKey(name: 'genus') this.genus,
      @JsonKey(name: 'language') this.language);

  factory _$_GenusResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_GenusResponseFromJson(json);

  @override
  @JsonKey(name: 'genus')
  final String genus;
  @override
  @JsonKey(name: 'language')
  final NamedApiResource language;

  @override
  String toString() {
    return 'GenusResponse(genus: $genus, language: $language)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GenusResponse &&
            (identical(other.genus, genus) ||
                const DeepCollectionEquality().equals(other.genus, genus)) &&
            (identical(other.language, language) ||
                const DeepCollectionEquality()
                    .equals(other.language, language)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(genus) ^
      const DeepCollectionEquality().hash(language);

  @JsonKey(ignore: true)
  @override
  _$GenusResponseCopyWith<_GenusResponse> get copyWith =>
      __$GenusResponseCopyWithImpl<_GenusResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GenusResponseToJson(this);
  }
}

abstract class _GenusResponse implements GenusResponse {
  const factory _GenusResponse(@JsonKey(name: 'genus') String genus,
      @JsonKey(name: 'language') NamedApiResource language) = _$_GenusResponse;

  factory _GenusResponse.fromJson(Map<String, dynamic> json) =
      _$_GenusResponse.fromJson;

  @override
  @JsonKey(name: 'genus')
  String get genus => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'language')
  NamedApiResource get language => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GenusResponseCopyWith<_GenusResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
