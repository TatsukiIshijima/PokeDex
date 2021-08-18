// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'description.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Description _$DescriptionFromJson(Map<String, dynamic> json) {
  return _Description.fromJson(json);
}

/// @nodoc
class _$DescriptionTearOff {
  const _$DescriptionTearOff();

  _Description call(@JsonKey(name: 'description') String description,
      @JsonKey(name: 'language') NamedApiResource language) {
    return _Description(
      description,
      language,
    );
  }

  Description fromJson(Map<String, Object> json) {
    return Description.fromJson(json);
  }
}

/// @nodoc
const $Description = _$DescriptionTearOff();

/// @nodoc
mixin _$Description {
  @JsonKey(name: 'description')
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'language')
  NamedApiResource get language => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DescriptionCopyWith<Description> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DescriptionCopyWith<$Res> {
  factory $DescriptionCopyWith(
          Description value, $Res Function(Description) then) =
      _$DescriptionCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'description') String description,
      @JsonKey(name: 'language') NamedApiResource language});

  $NamedApiResourceCopyWith<$Res> get language;
}

/// @nodoc
class _$DescriptionCopyWithImpl<$Res> implements $DescriptionCopyWith<$Res> {
  _$DescriptionCopyWithImpl(this._value, this._then);

  final Description _value;
  // ignore: unused_field
  final $Res Function(Description) _then;

  @override
  $Res call({
    Object? description = freezed,
    Object? language = freezed,
  }) {
    return _then(_value.copyWith(
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
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
abstract class _$DescriptionCopyWith<$Res>
    implements $DescriptionCopyWith<$Res> {
  factory _$DescriptionCopyWith(
          _Description value, $Res Function(_Description) then) =
      __$DescriptionCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'description') String description,
      @JsonKey(name: 'language') NamedApiResource language});

  @override
  $NamedApiResourceCopyWith<$Res> get language;
}

/// @nodoc
class __$DescriptionCopyWithImpl<$Res> extends _$DescriptionCopyWithImpl<$Res>
    implements _$DescriptionCopyWith<$Res> {
  __$DescriptionCopyWithImpl(
      _Description _value, $Res Function(_Description) _then)
      : super(_value, (v) => _then(v as _Description));

  @override
  _Description get _value => super._value as _Description;

  @override
  $Res call({
    Object? description = freezed,
    Object? language = freezed,
  }) {
    return _then(_Description(
      description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
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
class _$_Description implements _Description {
  const _$_Description(@JsonKey(name: 'description') this.description,
      @JsonKey(name: 'language') this.language);

  factory _$_Description.fromJson(Map<String, dynamic> json) =>
      _$_$_DescriptionFromJson(json);

  @override
  @JsonKey(name: 'description')
  final String description;
  @override
  @JsonKey(name: 'language')
  final NamedApiResource language;

  @override
  String toString() {
    return 'Description(description: $description, language: $language)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Description &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.language, language) ||
                const DeepCollectionEquality()
                    .equals(other.language, language)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(language);

  @JsonKey(ignore: true)
  @override
  _$DescriptionCopyWith<_Description> get copyWith =>
      __$DescriptionCopyWithImpl<_Description>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DescriptionToJson(this);
  }
}

abstract class _Description implements Description {
  const factory _Description(@JsonKey(name: 'description') String description,
      @JsonKey(name: 'language') NamedApiResource language) = _$_Description;

  factory _Description.fromJson(Map<String, dynamic> json) =
      _$_Description.fromJson;

  @override
  @JsonKey(name: 'description')
  String get description => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'language')
  NamedApiResource get language => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DescriptionCopyWith<_Description> get copyWith =>
      throw _privateConstructorUsedError;
}
