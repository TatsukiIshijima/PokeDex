// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'poke_api_error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PokeApiErrorTearOff {
  const _$PokeApiErrorTearOff();

  DefaultError defaultError(String message) {
    return DefaultError(
      message,
    );
  }

  NoInternetConnection noInternetConnection() {
    return const NoInternetConnection();
  }

  BasRequest badRequest() {
    return const BasRequest();
  }

  Forbidden forbidden() {
    return const Forbidden();
  }

  NotFound notFound() {
    return const NotFound();
  }

  MethodNotAllowed methodNotAllowed() {
    return const MethodNotAllowed();
  }

  NotAccesptable notAcceptable() {
    return const NotAccesptable();
  }

  RequestTimeout requestTimeout() {
    return const RequestTimeout();
  }

  InternalServerError internalServerError() {
    return const InternalServerError();
  }

  ServiceUnavailable serviceUnavailable() {
    return const ServiceUnavailable();
  }

  UnexpectedError unexpectedError() {
    return const UnexpectedError();
  }
}

/// @nodoc
const $PokeApiError = _$PokeApiErrorTearOff();

/// @nodoc
mixin _$PokeApiError {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) defaultError,
    required TResult Function() noInternetConnection,
    required TResult Function() badRequest,
    required TResult Function() forbidden,
    required TResult Function() notFound,
    required TResult Function() methodNotAllowed,
    required TResult Function() notAcceptable,
    required TResult Function() requestTimeout,
    required TResult Function() internalServerError,
    required TResult Function() serviceUnavailable,
    required TResult Function() unexpectedError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? defaultError,
    TResult Function()? noInternetConnection,
    TResult Function()? badRequest,
    TResult Function()? forbidden,
    TResult Function()? notFound,
    TResult Function()? methodNotAllowed,
    TResult Function()? notAcceptable,
    TResult Function()? requestTimeout,
    TResult Function()? internalServerError,
    TResult Function()? serviceUnavailable,
    TResult Function()? unexpectedError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DefaultError value) defaultError,
    required TResult Function(NoInternetConnection value) noInternetConnection,
    required TResult Function(BasRequest value) badRequest,
    required TResult Function(Forbidden value) forbidden,
    required TResult Function(NotFound value) notFound,
    required TResult Function(MethodNotAllowed value) methodNotAllowed,
    required TResult Function(NotAccesptable value) notAcceptable,
    required TResult Function(RequestTimeout value) requestTimeout,
    required TResult Function(InternalServerError value) internalServerError,
    required TResult Function(ServiceUnavailable value) serviceUnavailable,
    required TResult Function(UnexpectedError value) unexpectedError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DefaultError value)? defaultError,
    TResult Function(NoInternetConnection value)? noInternetConnection,
    TResult Function(BasRequest value)? badRequest,
    TResult Function(Forbidden value)? forbidden,
    TResult Function(NotFound value)? notFound,
    TResult Function(MethodNotAllowed value)? methodNotAllowed,
    TResult Function(NotAccesptable value)? notAcceptable,
    TResult Function(RequestTimeout value)? requestTimeout,
    TResult Function(InternalServerError value)? internalServerError,
    TResult Function(ServiceUnavailable value)? serviceUnavailable,
    TResult Function(UnexpectedError value)? unexpectedError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokeApiErrorCopyWith<$Res> {
  factory $PokeApiErrorCopyWith(
          PokeApiError value, $Res Function(PokeApiError) then) =
      _$PokeApiErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$PokeApiErrorCopyWithImpl<$Res> implements $PokeApiErrorCopyWith<$Res> {
  _$PokeApiErrorCopyWithImpl(this._value, this._then);

  final PokeApiError _value;
  // ignore: unused_field
  final $Res Function(PokeApiError) _then;
}

/// @nodoc
abstract class $DefaultErrorCopyWith<$Res> {
  factory $DefaultErrorCopyWith(
          DefaultError value, $Res Function(DefaultError) then) =
      _$DefaultErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$DefaultErrorCopyWithImpl<$Res> extends _$PokeApiErrorCopyWithImpl<$Res>
    implements $DefaultErrorCopyWith<$Res> {
  _$DefaultErrorCopyWithImpl(
      DefaultError _value, $Res Function(DefaultError) _then)
      : super(_value, (v) => _then(v as DefaultError));

  @override
  DefaultError get _value => super._value as DefaultError;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(DefaultError(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DefaultError implements DefaultError {
  const _$DefaultError(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'PokeApiError.defaultError(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DefaultError &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $DefaultErrorCopyWith<DefaultError> get copyWith =>
      _$DefaultErrorCopyWithImpl<DefaultError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) defaultError,
    required TResult Function() noInternetConnection,
    required TResult Function() badRequest,
    required TResult Function() forbidden,
    required TResult Function() notFound,
    required TResult Function() methodNotAllowed,
    required TResult Function() notAcceptable,
    required TResult Function() requestTimeout,
    required TResult Function() internalServerError,
    required TResult Function() serviceUnavailable,
    required TResult Function() unexpectedError,
  }) {
    return defaultError(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? defaultError,
    TResult Function()? noInternetConnection,
    TResult Function()? badRequest,
    TResult Function()? forbidden,
    TResult Function()? notFound,
    TResult Function()? methodNotAllowed,
    TResult Function()? notAcceptable,
    TResult Function()? requestTimeout,
    TResult Function()? internalServerError,
    TResult Function()? serviceUnavailable,
    TResult Function()? unexpectedError,
    required TResult orElse(),
  }) {
    if (defaultError != null) {
      return defaultError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DefaultError value) defaultError,
    required TResult Function(NoInternetConnection value) noInternetConnection,
    required TResult Function(BasRequest value) badRequest,
    required TResult Function(Forbidden value) forbidden,
    required TResult Function(NotFound value) notFound,
    required TResult Function(MethodNotAllowed value) methodNotAllowed,
    required TResult Function(NotAccesptable value) notAcceptable,
    required TResult Function(RequestTimeout value) requestTimeout,
    required TResult Function(InternalServerError value) internalServerError,
    required TResult Function(ServiceUnavailable value) serviceUnavailable,
    required TResult Function(UnexpectedError value) unexpectedError,
  }) {
    return defaultError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DefaultError value)? defaultError,
    TResult Function(NoInternetConnection value)? noInternetConnection,
    TResult Function(BasRequest value)? badRequest,
    TResult Function(Forbidden value)? forbidden,
    TResult Function(NotFound value)? notFound,
    TResult Function(MethodNotAllowed value)? methodNotAllowed,
    TResult Function(NotAccesptable value)? notAcceptable,
    TResult Function(RequestTimeout value)? requestTimeout,
    TResult Function(InternalServerError value)? internalServerError,
    TResult Function(ServiceUnavailable value)? serviceUnavailable,
    TResult Function(UnexpectedError value)? unexpectedError,
    required TResult orElse(),
  }) {
    if (defaultError != null) {
      return defaultError(this);
    }
    return orElse();
  }
}

abstract class DefaultError implements PokeApiError {
  const factory DefaultError(String message) = _$DefaultError;

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DefaultErrorCopyWith<DefaultError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoInternetConnectionCopyWith<$Res> {
  factory $NoInternetConnectionCopyWith(NoInternetConnection value,
          $Res Function(NoInternetConnection) then) =
      _$NoInternetConnectionCopyWithImpl<$Res>;
}

/// @nodoc
class _$NoInternetConnectionCopyWithImpl<$Res>
    extends _$PokeApiErrorCopyWithImpl<$Res>
    implements $NoInternetConnectionCopyWith<$Res> {
  _$NoInternetConnectionCopyWithImpl(
      NoInternetConnection _value, $Res Function(NoInternetConnection) _then)
      : super(_value, (v) => _then(v as NoInternetConnection));

  @override
  NoInternetConnection get _value => super._value as NoInternetConnection;
}

/// @nodoc

class _$NoInternetConnection implements NoInternetConnection {
  const _$NoInternetConnection();

  @override
  String toString() {
    return 'PokeApiError.noInternetConnection()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is NoInternetConnection);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) defaultError,
    required TResult Function() noInternetConnection,
    required TResult Function() badRequest,
    required TResult Function() forbidden,
    required TResult Function() notFound,
    required TResult Function() methodNotAllowed,
    required TResult Function() notAcceptable,
    required TResult Function() requestTimeout,
    required TResult Function() internalServerError,
    required TResult Function() serviceUnavailable,
    required TResult Function() unexpectedError,
  }) {
    return noInternetConnection();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? defaultError,
    TResult Function()? noInternetConnection,
    TResult Function()? badRequest,
    TResult Function()? forbidden,
    TResult Function()? notFound,
    TResult Function()? methodNotAllowed,
    TResult Function()? notAcceptable,
    TResult Function()? requestTimeout,
    TResult Function()? internalServerError,
    TResult Function()? serviceUnavailable,
    TResult Function()? unexpectedError,
    required TResult orElse(),
  }) {
    if (noInternetConnection != null) {
      return noInternetConnection();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DefaultError value) defaultError,
    required TResult Function(NoInternetConnection value) noInternetConnection,
    required TResult Function(BasRequest value) badRequest,
    required TResult Function(Forbidden value) forbidden,
    required TResult Function(NotFound value) notFound,
    required TResult Function(MethodNotAllowed value) methodNotAllowed,
    required TResult Function(NotAccesptable value) notAcceptable,
    required TResult Function(RequestTimeout value) requestTimeout,
    required TResult Function(InternalServerError value) internalServerError,
    required TResult Function(ServiceUnavailable value) serviceUnavailable,
    required TResult Function(UnexpectedError value) unexpectedError,
  }) {
    return noInternetConnection(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DefaultError value)? defaultError,
    TResult Function(NoInternetConnection value)? noInternetConnection,
    TResult Function(BasRequest value)? badRequest,
    TResult Function(Forbidden value)? forbidden,
    TResult Function(NotFound value)? notFound,
    TResult Function(MethodNotAllowed value)? methodNotAllowed,
    TResult Function(NotAccesptable value)? notAcceptable,
    TResult Function(RequestTimeout value)? requestTimeout,
    TResult Function(InternalServerError value)? internalServerError,
    TResult Function(ServiceUnavailable value)? serviceUnavailable,
    TResult Function(UnexpectedError value)? unexpectedError,
    required TResult orElse(),
  }) {
    if (noInternetConnection != null) {
      return noInternetConnection(this);
    }
    return orElse();
  }
}

abstract class NoInternetConnection implements PokeApiError {
  const factory NoInternetConnection() = _$NoInternetConnection;
}

/// @nodoc
abstract class $BasRequestCopyWith<$Res> {
  factory $BasRequestCopyWith(
          BasRequest value, $Res Function(BasRequest) then) =
      _$BasRequestCopyWithImpl<$Res>;
}

/// @nodoc
class _$BasRequestCopyWithImpl<$Res> extends _$PokeApiErrorCopyWithImpl<$Res>
    implements $BasRequestCopyWith<$Res> {
  _$BasRequestCopyWithImpl(BasRequest _value, $Res Function(BasRequest) _then)
      : super(_value, (v) => _then(v as BasRequest));

  @override
  BasRequest get _value => super._value as BasRequest;
}

/// @nodoc

class _$BasRequest implements BasRequest {
  const _$BasRequest();

  @override
  String toString() {
    return 'PokeApiError.badRequest()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is BasRequest);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) defaultError,
    required TResult Function() noInternetConnection,
    required TResult Function() badRequest,
    required TResult Function() forbidden,
    required TResult Function() notFound,
    required TResult Function() methodNotAllowed,
    required TResult Function() notAcceptable,
    required TResult Function() requestTimeout,
    required TResult Function() internalServerError,
    required TResult Function() serviceUnavailable,
    required TResult Function() unexpectedError,
  }) {
    return badRequest();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? defaultError,
    TResult Function()? noInternetConnection,
    TResult Function()? badRequest,
    TResult Function()? forbidden,
    TResult Function()? notFound,
    TResult Function()? methodNotAllowed,
    TResult Function()? notAcceptable,
    TResult Function()? requestTimeout,
    TResult Function()? internalServerError,
    TResult Function()? serviceUnavailable,
    TResult Function()? unexpectedError,
    required TResult orElse(),
  }) {
    if (badRequest != null) {
      return badRequest();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DefaultError value) defaultError,
    required TResult Function(NoInternetConnection value) noInternetConnection,
    required TResult Function(BasRequest value) badRequest,
    required TResult Function(Forbidden value) forbidden,
    required TResult Function(NotFound value) notFound,
    required TResult Function(MethodNotAllowed value) methodNotAllowed,
    required TResult Function(NotAccesptable value) notAcceptable,
    required TResult Function(RequestTimeout value) requestTimeout,
    required TResult Function(InternalServerError value) internalServerError,
    required TResult Function(ServiceUnavailable value) serviceUnavailable,
    required TResult Function(UnexpectedError value) unexpectedError,
  }) {
    return badRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DefaultError value)? defaultError,
    TResult Function(NoInternetConnection value)? noInternetConnection,
    TResult Function(BasRequest value)? badRequest,
    TResult Function(Forbidden value)? forbidden,
    TResult Function(NotFound value)? notFound,
    TResult Function(MethodNotAllowed value)? methodNotAllowed,
    TResult Function(NotAccesptable value)? notAcceptable,
    TResult Function(RequestTimeout value)? requestTimeout,
    TResult Function(InternalServerError value)? internalServerError,
    TResult Function(ServiceUnavailable value)? serviceUnavailable,
    TResult Function(UnexpectedError value)? unexpectedError,
    required TResult orElse(),
  }) {
    if (badRequest != null) {
      return badRequest(this);
    }
    return orElse();
  }
}

abstract class BasRequest implements PokeApiError {
  const factory BasRequest() = _$BasRequest;
}

/// @nodoc
abstract class $ForbiddenCopyWith<$Res> {
  factory $ForbiddenCopyWith(Forbidden value, $Res Function(Forbidden) then) =
      _$ForbiddenCopyWithImpl<$Res>;
}

/// @nodoc
class _$ForbiddenCopyWithImpl<$Res> extends _$PokeApiErrorCopyWithImpl<$Res>
    implements $ForbiddenCopyWith<$Res> {
  _$ForbiddenCopyWithImpl(Forbidden _value, $Res Function(Forbidden) _then)
      : super(_value, (v) => _then(v as Forbidden));

  @override
  Forbidden get _value => super._value as Forbidden;
}

/// @nodoc

class _$Forbidden implements Forbidden {
  const _$Forbidden();

  @override
  String toString() {
    return 'PokeApiError.forbidden()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Forbidden);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) defaultError,
    required TResult Function() noInternetConnection,
    required TResult Function() badRequest,
    required TResult Function() forbidden,
    required TResult Function() notFound,
    required TResult Function() methodNotAllowed,
    required TResult Function() notAcceptable,
    required TResult Function() requestTimeout,
    required TResult Function() internalServerError,
    required TResult Function() serviceUnavailable,
    required TResult Function() unexpectedError,
  }) {
    return forbidden();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? defaultError,
    TResult Function()? noInternetConnection,
    TResult Function()? badRequest,
    TResult Function()? forbidden,
    TResult Function()? notFound,
    TResult Function()? methodNotAllowed,
    TResult Function()? notAcceptable,
    TResult Function()? requestTimeout,
    TResult Function()? internalServerError,
    TResult Function()? serviceUnavailable,
    TResult Function()? unexpectedError,
    required TResult orElse(),
  }) {
    if (forbidden != null) {
      return forbidden();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DefaultError value) defaultError,
    required TResult Function(NoInternetConnection value) noInternetConnection,
    required TResult Function(BasRequest value) badRequest,
    required TResult Function(Forbidden value) forbidden,
    required TResult Function(NotFound value) notFound,
    required TResult Function(MethodNotAllowed value) methodNotAllowed,
    required TResult Function(NotAccesptable value) notAcceptable,
    required TResult Function(RequestTimeout value) requestTimeout,
    required TResult Function(InternalServerError value) internalServerError,
    required TResult Function(ServiceUnavailable value) serviceUnavailable,
    required TResult Function(UnexpectedError value) unexpectedError,
  }) {
    return forbidden(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DefaultError value)? defaultError,
    TResult Function(NoInternetConnection value)? noInternetConnection,
    TResult Function(BasRequest value)? badRequest,
    TResult Function(Forbidden value)? forbidden,
    TResult Function(NotFound value)? notFound,
    TResult Function(MethodNotAllowed value)? methodNotAllowed,
    TResult Function(NotAccesptable value)? notAcceptable,
    TResult Function(RequestTimeout value)? requestTimeout,
    TResult Function(InternalServerError value)? internalServerError,
    TResult Function(ServiceUnavailable value)? serviceUnavailable,
    TResult Function(UnexpectedError value)? unexpectedError,
    required TResult orElse(),
  }) {
    if (forbidden != null) {
      return forbidden(this);
    }
    return orElse();
  }
}

abstract class Forbidden implements PokeApiError {
  const factory Forbidden() = _$Forbidden;
}

/// @nodoc
abstract class $NotFoundCopyWith<$Res> {
  factory $NotFoundCopyWith(NotFound value, $Res Function(NotFound) then) =
      _$NotFoundCopyWithImpl<$Res>;
}

/// @nodoc
class _$NotFoundCopyWithImpl<$Res> extends _$PokeApiErrorCopyWithImpl<$Res>
    implements $NotFoundCopyWith<$Res> {
  _$NotFoundCopyWithImpl(NotFound _value, $Res Function(NotFound) _then)
      : super(_value, (v) => _then(v as NotFound));

  @override
  NotFound get _value => super._value as NotFound;
}

/// @nodoc

class _$NotFound implements NotFound {
  const _$NotFound();

  @override
  String toString() {
    return 'PokeApiError.notFound()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is NotFound);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) defaultError,
    required TResult Function() noInternetConnection,
    required TResult Function() badRequest,
    required TResult Function() forbidden,
    required TResult Function() notFound,
    required TResult Function() methodNotAllowed,
    required TResult Function() notAcceptable,
    required TResult Function() requestTimeout,
    required TResult Function() internalServerError,
    required TResult Function() serviceUnavailable,
    required TResult Function() unexpectedError,
  }) {
    return notFound();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? defaultError,
    TResult Function()? noInternetConnection,
    TResult Function()? badRequest,
    TResult Function()? forbidden,
    TResult Function()? notFound,
    TResult Function()? methodNotAllowed,
    TResult Function()? notAcceptable,
    TResult Function()? requestTimeout,
    TResult Function()? internalServerError,
    TResult Function()? serviceUnavailable,
    TResult Function()? unexpectedError,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DefaultError value) defaultError,
    required TResult Function(NoInternetConnection value) noInternetConnection,
    required TResult Function(BasRequest value) badRequest,
    required TResult Function(Forbidden value) forbidden,
    required TResult Function(NotFound value) notFound,
    required TResult Function(MethodNotAllowed value) methodNotAllowed,
    required TResult Function(NotAccesptable value) notAcceptable,
    required TResult Function(RequestTimeout value) requestTimeout,
    required TResult Function(InternalServerError value) internalServerError,
    required TResult Function(ServiceUnavailable value) serviceUnavailable,
    required TResult Function(UnexpectedError value) unexpectedError,
  }) {
    return notFound(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DefaultError value)? defaultError,
    TResult Function(NoInternetConnection value)? noInternetConnection,
    TResult Function(BasRequest value)? badRequest,
    TResult Function(Forbidden value)? forbidden,
    TResult Function(NotFound value)? notFound,
    TResult Function(MethodNotAllowed value)? methodNotAllowed,
    TResult Function(NotAccesptable value)? notAcceptable,
    TResult Function(RequestTimeout value)? requestTimeout,
    TResult Function(InternalServerError value)? internalServerError,
    TResult Function(ServiceUnavailable value)? serviceUnavailable,
    TResult Function(UnexpectedError value)? unexpectedError,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound(this);
    }
    return orElse();
  }
}

abstract class NotFound implements PokeApiError {
  const factory NotFound() = _$NotFound;
}

/// @nodoc
abstract class $MethodNotAllowedCopyWith<$Res> {
  factory $MethodNotAllowedCopyWith(
          MethodNotAllowed value, $Res Function(MethodNotAllowed) then) =
      _$MethodNotAllowedCopyWithImpl<$Res>;
}

/// @nodoc
class _$MethodNotAllowedCopyWithImpl<$Res>
    extends _$PokeApiErrorCopyWithImpl<$Res>
    implements $MethodNotAllowedCopyWith<$Res> {
  _$MethodNotAllowedCopyWithImpl(
      MethodNotAllowed _value, $Res Function(MethodNotAllowed) _then)
      : super(_value, (v) => _then(v as MethodNotAllowed));

  @override
  MethodNotAllowed get _value => super._value as MethodNotAllowed;
}

/// @nodoc

class _$MethodNotAllowed implements MethodNotAllowed {
  const _$MethodNotAllowed();

  @override
  String toString() {
    return 'PokeApiError.methodNotAllowed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is MethodNotAllowed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) defaultError,
    required TResult Function() noInternetConnection,
    required TResult Function() badRequest,
    required TResult Function() forbidden,
    required TResult Function() notFound,
    required TResult Function() methodNotAllowed,
    required TResult Function() notAcceptable,
    required TResult Function() requestTimeout,
    required TResult Function() internalServerError,
    required TResult Function() serviceUnavailable,
    required TResult Function() unexpectedError,
  }) {
    return methodNotAllowed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? defaultError,
    TResult Function()? noInternetConnection,
    TResult Function()? badRequest,
    TResult Function()? forbidden,
    TResult Function()? notFound,
    TResult Function()? methodNotAllowed,
    TResult Function()? notAcceptable,
    TResult Function()? requestTimeout,
    TResult Function()? internalServerError,
    TResult Function()? serviceUnavailable,
    TResult Function()? unexpectedError,
    required TResult orElse(),
  }) {
    if (methodNotAllowed != null) {
      return methodNotAllowed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DefaultError value) defaultError,
    required TResult Function(NoInternetConnection value) noInternetConnection,
    required TResult Function(BasRequest value) badRequest,
    required TResult Function(Forbidden value) forbidden,
    required TResult Function(NotFound value) notFound,
    required TResult Function(MethodNotAllowed value) methodNotAllowed,
    required TResult Function(NotAccesptable value) notAcceptable,
    required TResult Function(RequestTimeout value) requestTimeout,
    required TResult Function(InternalServerError value) internalServerError,
    required TResult Function(ServiceUnavailable value) serviceUnavailable,
    required TResult Function(UnexpectedError value) unexpectedError,
  }) {
    return methodNotAllowed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DefaultError value)? defaultError,
    TResult Function(NoInternetConnection value)? noInternetConnection,
    TResult Function(BasRequest value)? badRequest,
    TResult Function(Forbidden value)? forbidden,
    TResult Function(NotFound value)? notFound,
    TResult Function(MethodNotAllowed value)? methodNotAllowed,
    TResult Function(NotAccesptable value)? notAcceptable,
    TResult Function(RequestTimeout value)? requestTimeout,
    TResult Function(InternalServerError value)? internalServerError,
    TResult Function(ServiceUnavailable value)? serviceUnavailable,
    TResult Function(UnexpectedError value)? unexpectedError,
    required TResult orElse(),
  }) {
    if (methodNotAllowed != null) {
      return methodNotAllowed(this);
    }
    return orElse();
  }
}

abstract class MethodNotAllowed implements PokeApiError {
  const factory MethodNotAllowed() = _$MethodNotAllowed;
}

/// @nodoc
abstract class $NotAccesptableCopyWith<$Res> {
  factory $NotAccesptableCopyWith(
          NotAccesptable value, $Res Function(NotAccesptable) then) =
      _$NotAccesptableCopyWithImpl<$Res>;
}

/// @nodoc
class _$NotAccesptableCopyWithImpl<$Res>
    extends _$PokeApiErrorCopyWithImpl<$Res>
    implements $NotAccesptableCopyWith<$Res> {
  _$NotAccesptableCopyWithImpl(
      NotAccesptable _value, $Res Function(NotAccesptable) _then)
      : super(_value, (v) => _then(v as NotAccesptable));

  @override
  NotAccesptable get _value => super._value as NotAccesptable;
}

/// @nodoc

class _$NotAccesptable implements NotAccesptable {
  const _$NotAccesptable();

  @override
  String toString() {
    return 'PokeApiError.notAcceptable()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is NotAccesptable);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) defaultError,
    required TResult Function() noInternetConnection,
    required TResult Function() badRequest,
    required TResult Function() forbidden,
    required TResult Function() notFound,
    required TResult Function() methodNotAllowed,
    required TResult Function() notAcceptable,
    required TResult Function() requestTimeout,
    required TResult Function() internalServerError,
    required TResult Function() serviceUnavailable,
    required TResult Function() unexpectedError,
  }) {
    return notAcceptable();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? defaultError,
    TResult Function()? noInternetConnection,
    TResult Function()? badRequest,
    TResult Function()? forbidden,
    TResult Function()? notFound,
    TResult Function()? methodNotAllowed,
    TResult Function()? notAcceptable,
    TResult Function()? requestTimeout,
    TResult Function()? internalServerError,
    TResult Function()? serviceUnavailable,
    TResult Function()? unexpectedError,
    required TResult orElse(),
  }) {
    if (notAcceptable != null) {
      return notAcceptable();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DefaultError value) defaultError,
    required TResult Function(NoInternetConnection value) noInternetConnection,
    required TResult Function(BasRequest value) badRequest,
    required TResult Function(Forbidden value) forbidden,
    required TResult Function(NotFound value) notFound,
    required TResult Function(MethodNotAllowed value) methodNotAllowed,
    required TResult Function(NotAccesptable value) notAcceptable,
    required TResult Function(RequestTimeout value) requestTimeout,
    required TResult Function(InternalServerError value) internalServerError,
    required TResult Function(ServiceUnavailable value) serviceUnavailable,
    required TResult Function(UnexpectedError value) unexpectedError,
  }) {
    return notAcceptable(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DefaultError value)? defaultError,
    TResult Function(NoInternetConnection value)? noInternetConnection,
    TResult Function(BasRequest value)? badRequest,
    TResult Function(Forbidden value)? forbidden,
    TResult Function(NotFound value)? notFound,
    TResult Function(MethodNotAllowed value)? methodNotAllowed,
    TResult Function(NotAccesptable value)? notAcceptable,
    TResult Function(RequestTimeout value)? requestTimeout,
    TResult Function(InternalServerError value)? internalServerError,
    TResult Function(ServiceUnavailable value)? serviceUnavailable,
    TResult Function(UnexpectedError value)? unexpectedError,
    required TResult orElse(),
  }) {
    if (notAcceptable != null) {
      return notAcceptable(this);
    }
    return orElse();
  }
}

abstract class NotAccesptable implements PokeApiError {
  const factory NotAccesptable() = _$NotAccesptable;
}

/// @nodoc
abstract class $RequestTimeoutCopyWith<$Res> {
  factory $RequestTimeoutCopyWith(
          RequestTimeout value, $Res Function(RequestTimeout) then) =
      _$RequestTimeoutCopyWithImpl<$Res>;
}

/// @nodoc
class _$RequestTimeoutCopyWithImpl<$Res>
    extends _$PokeApiErrorCopyWithImpl<$Res>
    implements $RequestTimeoutCopyWith<$Res> {
  _$RequestTimeoutCopyWithImpl(
      RequestTimeout _value, $Res Function(RequestTimeout) _then)
      : super(_value, (v) => _then(v as RequestTimeout));

  @override
  RequestTimeout get _value => super._value as RequestTimeout;
}

/// @nodoc

class _$RequestTimeout implements RequestTimeout {
  const _$RequestTimeout();

  @override
  String toString() {
    return 'PokeApiError.requestTimeout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is RequestTimeout);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) defaultError,
    required TResult Function() noInternetConnection,
    required TResult Function() badRequest,
    required TResult Function() forbidden,
    required TResult Function() notFound,
    required TResult Function() methodNotAllowed,
    required TResult Function() notAcceptable,
    required TResult Function() requestTimeout,
    required TResult Function() internalServerError,
    required TResult Function() serviceUnavailable,
    required TResult Function() unexpectedError,
  }) {
    return requestTimeout();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? defaultError,
    TResult Function()? noInternetConnection,
    TResult Function()? badRequest,
    TResult Function()? forbidden,
    TResult Function()? notFound,
    TResult Function()? methodNotAllowed,
    TResult Function()? notAcceptable,
    TResult Function()? requestTimeout,
    TResult Function()? internalServerError,
    TResult Function()? serviceUnavailable,
    TResult Function()? unexpectedError,
    required TResult orElse(),
  }) {
    if (requestTimeout != null) {
      return requestTimeout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DefaultError value) defaultError,
    required TResult Function(NoInternetConnection value) noInternetConnection,
    required TResult Function(BasRequest value) badRequest,
    required TResult Function(Forbidden value) forbidden,
    required TResult Function(NotFound value) notFound,
    required TResult Function(MethodNotAllowed value) methodNotAllowed,
    required TResult Function(NotAccesptable value) notAcceptable,
    required TResult Function(RequestTimeout value) requestTimeout,
    required TResult Function(InternalServerError value) internalServerError,
    required TResult Function(ServiceUnavailable value) serviceUnavailable,
    required TResult Function(UnexpectedError value) unexpectedError,
  }) {
    return requestTimeout(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DefaultError value)? defaultError,
    TResult Function(NoInternetConnection value)? noInternetConnection,
    TResult Function(BasRequest value)? badRequest,
    TResult Function(Forbidden value)? forbidden,
    TResult Function(NotFound value)? notFound,
    TResult Function(MethodNotAllowed value)? methodNotAllowed,
    TResult Function(NotAccesptable value)? notAcceptable,
    TResult Function(RequestTimeout value)? requestTimeout,
    TResult Function(InternalServerError value)? internalServerError,
    TResult Function(ServiceUnavailable value)? serviceUnavailable,
    TResult Function(UnexpectedError value)? unexpectedError,
    required TResult orElse(),
  }) {
    if (requestTimeout != null) {
      return requestTimeout(this);
    }
    return orElse();
  }
}

abstract class RequestTimeout implements PokeApiError {
  const factory RequestTimeout() = _$RequestTimeout;
}

/// @nodoc
abstract class $InternalServerErrorCopyWith<$Res> {
  factory $InternalServerErrorCopyWith(
          InternalServerError value, $Res Function(InternalServerError) then) =
      _$InternalServerErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$InternalServerErrorCopyWithImpl<$Res>
    extends _$PokeApiErrorCopyWithImpl<$Res>
    implements $InternalServerErrorCopyWith<$Res> {
  _$InternalServerErrorCopyWithImpl(
      InternalServerError _value, $Res Function(InternalServerError) _then)
      : super(_value, (v) => _then(v as InternalServerError));

  @override
  InternalServerError get _value => super._value as InternalServerError;
}

/// @nodoc

class _$InternalServerError implements InternalServerError {
  const _$InternalServerError();

  @override
  String toString() {
    return 'PokeApiError.internalServerError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InternalServerError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) defaultError,
    required TResult Function() noInternetConnection,
    required TResult Function() badRequest,
    required TResult Function() forbidden,
    required TResult Function() notFound,
    required TResult Function() methodNotAllowed,
    required TResult Function() notAcceptable,
    required TResult Function() requestTimeout,
    required TResult Function() internalServerError,
    required TResult Function() serviceUnavailable,
    required TResult Function() unexpectedError,
  }) {
    return internalServerError();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? defaultError,
    TResult Function()? noInternetConnection,
    TResult Function()? badRequest,
    TResult Function()? forbidden,
    TResult Function()? notFound,
    TResult Function()? methodNotAllowed,
    TResult Function()? notAcceptable,
    TResult Function()? requestTimeout,
    TResult Function()? internalServerError,
    TResult Function()? serviceUnavailable,
    TResult Function()? unexpectedError,
    required TResult orElse(),
  }) {
    if (internalServerError != null) {
      return internalServerError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DefaultError value) defaultError,
    required TResult Function(NoInternetConnection value) noInternetConnection,
    required TResult Function(BasRequest value) badRequest,
    required TResult Function(Forbidden value) forbidden,
    required TResult Function(NotFound value) notFound,
    required TResult Function(MethodNotAllowed value) methodNotAllowed,
    required TResult Function(NotAccesptable value) notAcceptable,
    required TResult Function(RequestTimeout value) requestTimeout,
    required TResult Function(InternalServerError value) internalServerError,
    required TResult Function(ServiceUnavailable value) serviceUnavailable,
    required TResult Function(UnexpectedError value) unexpectedError,
  }) {
    return internalServerError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DefaultError value)? defaultError,
    TResult Function(NoInternetConnection value)? noInternetConnection,
    TResult Function(BasRequest value)? badRequest,
    TResult Function(Forbidden value)? forbidden,
    TResult Function(NotFound value)? notFound,
    TResult Function(MethodNotAllowed value)? methodNotAllowed,
    TResult Function(NotAccesptable value)? notAcceptable,
    TResult Function(RequestTimeout value)? requestTimeout,
    TResult Function(InternalServerError value)? internalServerError,
    TResult Function(ServiceUnavailable value)? serviceUnavailable,
    TResult Function(UnexpectedError value)? unexpectedError,
    required TResult orElse(),
  }) {
    if (internalServerError != null) {
      return internalServerError(this);
    }
    return orElse();
  }
}

abstract class InternalServerError implements PokeApiError {
  const factory InternalServerError() = _$InternalServerError;
}

/// @nodoc
abstract class $ServiceUnavailableCopyWith<$Res> {
  factory $ServiceUnavailableCopyWith(
          ServiceUnavailable value, $Res Function(ServiceUnavailable) then) =
      _$ServiceUnavailableCopyWithImpl<$Res>;
}

/// @nodoc
class _$ServiceUnavailableCopyWithImpl<$Res>
    extends _$PokeApiErrorCopyWithImpl<$Res>
    implements $ServiceUnavailableCopyWith<$Res> {
  _$ServiceUnavailableCopyWithImpl(
      ServiceUnavailable _value, $Res Function(ServiceUnavailable) _then)
      : super(_value, (v) => _then(v as ServiceUnavailable));

  @override
  ServiceUnavailable get _value => super._value as ServiceUnavailable;
}

/// @nodoc

class _$ServiceUnavailable implements ServiceUnavailable {
  const _$ServiceUnavailable();

  @override
  String toString() {
    return 'PokeApiError.serviceUnavailable()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ServiceUnavailable);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) defaultError,
    required TResult Function() noInternetConnection,
    required TResult Function() badRequest,
    required TResult Function() forbidden,
    required TResult Function() notFound,
    required TResult Function() methodNotAllowed,
    required TResult Function() notAcceptable,
    required TResult Function() requestTimeout,
    required TResult Function() internalServerError,
    required TResult Function() serviceUnavailable,
    required TResult Function() unexpectedError,
  }) {
    return serviceUnavailable();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? defaultError,
    TResult Function()? noInternetConnection,
    TResult Function()? badRequest,
    TResult Function()? forbidden,
    TResult Function()? notFound,
    TResult Function()? methodNotAllowed,
    TResult Function()? notAcceptable,
    TResult Function()? requestTimeout,
    TResult Function()? internalServerError,
    TResult Function()? serviceUnavailable,
    TResult Function()? unexpectedError,
    required TResult orElse(),
  }) {
    if (serviceUnavailable != null) {
      return serviceUnavailable();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DefaultError value) defaultError,
    required TResult Function(NoInternetConnection value) noInternetConnection,
    required TResult Function(BasRequest value) badRequest,
    required TResult Function(Forbidden value) forbidden,
    required TResult Function(NotFound value) notFound,
    required TResult Function(MethodNotAllowed value) methodNotAllowed,
    required TResult Function(NotAccesptable value) notAcceptable,
    required TResult Function(RequestTimeout value) requestTimeout,
    required TResult Function(InternalServerError value) internalServerError,
    required TResult Function(ServiceUnavailable value) serviceUnavailable,
    required TResult Function(UnexpectedError value) unexpectedError,
  }) {
    return serviceUnavailable(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DefaultError value)? defaultError,
    TResult Function(NoInternetConnection value)? noInternetConnection,
    TResult Function(BasRequest value)? badRequest,
    TResult Function(Forbidden value)? forbidden,
    TResult Function(NotFound value)? notFound,
    TResult Function(MethodNotAllowed value)? methodNotAllowed,
    TResult Function(NotAccesptable value)? notAcceptable,
    TResult Function(RequestTimeout value)? requestTimeout,
    TResult Function(InternalServerError value)? internalServerError,
    TResult Function(ServiceUnavailable value)? serviceUnavailable,
    TResult Function(UnexpectedError value)? unexpectedError,
    required TResult orElse(),
  }) {
    if (serviceUnavailable != null) {
      return serviceUnavailable(this);
    }
    return orElse();
  }
}

abstract class ServiceUnavailable implements PokeApiError {
  const factory ServiceUnavailable() = _$ServiceUnavailable;
}

/// @nodoc
abstract class $UnexpectedErrorCopyWith<$Res> {
  factory $UnexpectedErrorCopyWith(
          UnexpectedError value, $Res Function(UnexpectedError) then) =
      _$UnexpectedErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$UnexpectedErrorCopyWithImpl<$Res>
    extends _$PokeApiErrorCopyWithImpl<$Res>
    implements $UnexpectedErrorCopyWith<$Res> {
  _$UnexpectedErrorCopyWithImpl(
      UnexpectedError _value, $Res Function(UnexpectedError) _then)
      : super(_value, (v) => _then(v as UnexpectedError));

  @override
  UnexpectedError get _value => super._value as UnexpectedError;
}

/// @nodoc

class _$UnexpectedError implements UnexpectedError {
  const _$UnexpectedError();

  @override
  String toString() {
    return 'PokeApiError.unexpectedError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UnexpectedError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) defaultError,
    required TResult Function() noInternetConnection,
    required TResult Function() badRequest,
    required TResult Function() forbidden,
    required TResult Function() notFound,
    required TResult Function() methodNotAllowed,
    required TResult Function() notAcceptable,
    required TResult Function() requestTimeout,
    required TResult Function() internalServerError,
    required TResult Function() serviceUnavailable,
    required TResult Function() unexpectedError,
  }) {
    return unexpectedError();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? defaultError,
    TResult Function()? noInternetConnection,
    TResult Function()? badRequest,
    TResult Function()? forbidden,
    TResult Function()? notFound,
    TResult Function()? methodNotAllowed,
    TResult Function()? notAcceptable,
    TResult Function()? requestTimeout,
    TResult Function()? internalServerError,
    TResult Function()? serviceUnavailable,
    TResult Function()? unexpectedError,
    required TResult orElse(),
  }) {
    if (unexpectedError != null) {
      return unexpectedError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DefaultError value) defaultError,
    required TResult Function(NoInternetConnection value) noInternetConnection,
    required TResult Function(BasRequest value) badRequest,
    required TResult Function(Forbidden value) forbidden,
    required TResult Function(NotFound value) notFound,
    required TResult Function(MethodNotAllowed value) methodNotAllowed,
    required TResult Function(NotAccesptable value) notAcceptable,
    required TResult Function(RequestTimeout value) requestTimeout,
    required TResult Function(InternalServerError value) internalServerError,
    required TResult Function(ServiceUnavailable value) serviceUnavailable,
    required TResult Function(UnexpectedError value) unexpectedError,
  }) {
    return unexpectedError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DefaultError value)? defaultError,
    TResult Function(NoInternetConnection value)? noInternetConnection,
    TResult Function(BasRequest value)? badRequest,
    TResult Function(Forbidden value)? forbidden,
    TResult Function(NotFound value)? notFound,
    TResult Function(MethodNotAllowed value)? methodNotAllowed,
    TResult Function(NotAccesptable value)? notAcceptable,
    TResult Function(RequestTimeout value)? requestTimeout,
    TResult Function(InternalServerError value)? internalServerError,
    TResult Function(ServiceUnavailable value)? serviceUnavailable,
    TResult Function(UnexpectedError value)? unexpectedError,
    required TResult orElse(),
  }) {
    if (unexpectedError != null) {
      return unexpectedError(this);
    }
    return orElse();
  }
}

abstract class UnexpectedError implements PokeApiError {
  const factory UnexpectedError() = _$UnexpectedError;
}
