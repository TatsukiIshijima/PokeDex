import 'package:flutter/material.dart';

@immutable
class LoadingState {
  const LoadingState({
    this.isLoading = false,
  });

  final bool isLoading;

  @override
  int get hashCode => isLoading.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LoadingState &&
          runtimeType == other.runtimeType &&
          isLoading == other.isLoading;

  @override
  String toString() => 'LoadingState{isLoading: $isLoading}';
}
