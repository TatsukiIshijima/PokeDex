extension IntExtension on int {
  String padLeft() {
    return toString().padLeft(3, '0');
  }

  double dmToMeter() {
    return this / 10;
  }

  double hgToKg() {
    return this / 10;
  }
}
