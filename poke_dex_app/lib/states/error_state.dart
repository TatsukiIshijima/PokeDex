import 'package:flutter/material.dart';
import 'package:poke_api_client/poke_api_error.dart';

@immutable
class ErrorState {
  const ErrorState({
    this.apiErrorState,
  });

  final ApiErrorState? apiErrorState;

  @override
  int get hashCode => apiErrorState.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ErrorState &&
          runtimeType == other.runtimeType &&
          apiErrorState == other.apiErrorState;

  @override
  String toString() => 'ErrorState{apiErrorState: $apiErrorState';
}

@immutable
class ApiErrorState {
  const ApiErrorState({
    required this.apiError,
  });

  final PokeApiError apiError;

  @override
  int get hashCode => apiError.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ApiErrorState &&
          runtimeType == other.runtimeType &&
          apiError == other.apiError;

  @override
  String toString() => 'ApiErrorState{apiError: ${apiError.runtimeType}';
}
