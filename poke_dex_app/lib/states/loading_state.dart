import 'package:flutter/material.dart';

@immutable
class LoadingState {
  const LoadingState({
    this.isLoading = false,
  });

  final bool isLoading;
}
