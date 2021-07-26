import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poke_api_client/poke_api_error.dart';

part 'poke_api_result.freezed.dart';

@freezed
class PokeApiResult<T> with _$PokeApiResult<T> {
  const factory PokeApiResult.success(T data) = Success<T>;
  const factory PokeApiResult.failure(PokeApiError e) = Failure<T>;
}
