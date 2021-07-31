import 'package:flutter/material.dart';
import 'package:poke_api_client/poke_api_error.dart';

@immutable
class ErrorState {
  const ErrorState({
    this.apiErrorState,
  });

  final ApiErrorState? apiErrorState;
}

@immutable
class ApiErrorState {
  const ApiErrorState({
    required this.apiError,
  });

  final PokeApiError apiError;
}
