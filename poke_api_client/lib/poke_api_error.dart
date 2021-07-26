import 'package:freezed_annotation/freezed_annotation.dart';

part 'poke_api_error.freezed.dart';

@freezed
class PokeApiError with _$PokeApiError {
  const factory PokeApiError.defaultError(String message) = DefaultError;
  const factory PokeApiError.noInternetConnection() = NoInternetConnection;
  const factory PokeApiError.badRequest() = BasRequest;
  const factory PokeApiError.forbidden() = Forbidden;
  const factory PokeApiError.notFound() = NotFound;
  const factory PokeApiError.methodNotAllowed() = MethodNotAllowed;
  const factory PokeApiError.notAcceptable() = NotAccesptable;
  const factory PokeApiError.requestTimeout() = RequestTimeout;
  const factory PokeApiError.internalServerError() = InternalServerError;
  const factory PokeApiError.serviceUnavailable() = ServiceUnavailable;
  const factory PokeApiError.unexpectedError() = UnexpectedError;
}
