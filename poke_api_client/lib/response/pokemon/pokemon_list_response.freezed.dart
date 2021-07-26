// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'pokemon_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PokemonListResponse _$PokemonListResponseFromJson(Map<String, dynamic> json) {
  return _PokemonListResponse.fromJson(json);
}

/// @nodoc
class _$PokemonListResponseTearOff {
  const _$PokemonListResponseTearOff();

  _PokemonListResponse call(
      @JsonKey(name: 'count') int count,
      @JsonKey(name: 'next') String? next,
      @JsonKey(name: 'previous') String? previous,
      @JsonKey(name: 'results') List<PokemonResponse> results) {
    return _PokemonListResponse(
      count,
      next,
      previous,
      results,
    );
  }

  PokemonListResponse fromJson(Map<String, Object> json) {
    return PokemonListResponse.fromJson(json);
  }
}

/// @nodoc
const $PokemonListResponse = _$PokemonListResponseTearOff();

/// @nodoc
mixin _$PokemonListResponse {
  @JsonKey(name: 'count')
  int get count => throw _privateConstructorUsedError;
  @JsonKey(name: 'next')
  String? get next => throw _privateConstructorUsedError;
  @JsonKey(name: 'previous')
  String? get previous => throw _privateConstructorUsedError;
  @JsonKey(name: 'results')
  List<PokemonResponse> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonListResponseCopyWith<PokemonListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonListResponseCopyWith<$Res> {
  factory $PokemonListResponseCopyWith(
          PokemonListResponse value, $Res Function(PokemonListResponse) then) =
      _$PokemonListResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'count') int count,
      @JsonKey(name: 'next') String? next,
      @JsonKey(name: 'previous') String? previous,
      @JsonKey(name: 'results') List<PokemonResponse> results});
}

/// @nodoc
class _$PokemonListResponseCopyWithImpl<$Res>
    implements $PokemonListResponseCopyWith<$Res> {
  _$PokemonListResponseCopyWithImpl(this._value, this._then);

  final PokemonListResponse _value;
  // ignore: unused_field
  final $Res Function(PokemonListResponse) _then;

  @override
  $Res call({
    Object? count = freezed,
    Object? next = freezed,
    Object? previous = freezed,
    Object? results = freezed,
  }) {
    return _then(_value.copyWith(
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      next: next == freezed
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      previous: previous == freezed
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as String?,
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<PokemonResponse>,
    ));
  }
}

/// @nodoc
abstract class _$PokemonListResponseCopyWith<$Res>
    implements $PokemonListResponseCopyWith<$Res> {
  factory _$PokemonListResponseCopyWith(_PokemonListResponse value,
          $Res Function(_PokemonListResponse) then) =
      __$PokemonListResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'count') int count,
      @JsonKey(name: 'next') String? next,
      @JsonKey(name: 'previous') String? previous,
      @JsonKey(name: 'results') List<PokemonResponse> results});
}

/// @nodoc
class __$PokemonListResponseCopyWithImpl<$Res>
    extends _$PokemonListResponseCopyWithImpl<$Res>
    implements _$PokemonListResponseCopyWith<$Res> {
  __$PokemonListResponseCopyWithImpl(
      _PokemonListResponse _value, $Res Function(_PokemonListResponse) _then)
      : super(_value, (v) => _then(v as _PokemonListResponse));

  @override
  _PokemonListResponse get _value => super._value as _PokemonListResponse;

  @override
  $Res call({
    Object? count = freezed,
    Object? next = freezed,
    Object? previous = freezed,
    Object? results = freezed,
  }) {
    return _then(_PokemonListResponse(
      count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      next == freezed
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      previous == freezed
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as String?,
      results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<PokemonResponse>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PokemonListResponse implements _PokemonListResponse {
  const _$_PokemonListResponse(
      @JsonKey(name: 'count') this.count,
      @JsonKey(name: 'next') this.next,
      @JsonKey(name: 'previous') this.previous,
      @JsonKey(name: 'results') this.results);

  factory _$_PokemonListResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_PokemonListResponseFromJson(json);

  @override
  @JsonKey(name: 'count')
  final int count;
  @override
  @JsonKey(name: 'next')
  final String? next;
  @override
  @JsonKey(name: 'previous')
  final String? previous;
  @override
  @JsonKey(name: 'results')
  final List<PokemonResponse> results;

  @override
  String toString() {
    return 'PokemonListResponse(count: $count, next: $next, previous: $previous, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PokemonListResponse &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)) &&
            (identical(other.next, next) ||
                const DeepCollectionEquality().equals(other.next, next)) &&
            (identical(other.previous, previous) ||
                const DeepCollectionEquality()
                    .equals(other.previous, previous)) &&
            (identical(other.results, results) ||
                const DeepCollectionEquality().equals(other.results, results)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(count) ^
      const DeepCollectionEquality().hash(next) ^
      const DeepCollectionEquality().hash(previous) ^
      const DeepCollectionEquality().hash(results);

  @JsonKey(ignore: true)
  @override
  _$PokemonListResponseCopyWith<_PokemonListResponse> get copyWith =>
      __$PokemonListResponseCopyWithImpl<_PokemonListResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PokemonListResponseToJson(this);
  }
}

abstract class _PokemonListResponse implements PokemonListResponse {
  const factory _PokemonListResponse(
          @JsonKey(name: 'count') int count,
          @JsonKey(name: 'next') String? next,
          @JsonKey(name: 'previous') String? previous,
          @JsonKey(name: 'results') List<PokemonResponse> results) =
      _$_PokemonListResponse;

  factory _PokemonListResponse.fromJson(Map<String, dynamic> json) =
      _$_PokemonListResponse.fromJson;

  @override
  @JsonKey(name: 'count')
  int get count => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'next')
  String? get next => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'previous')
  String? get previous => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'results')
  List<PokemonResponse> get results => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PokemonListResponseCopyWith<_PokemonListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
