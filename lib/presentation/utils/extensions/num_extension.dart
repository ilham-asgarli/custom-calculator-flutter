import 'dart:math';

import 'package:flutter/widgets.dart';

extension NumExtension on num? {
  Widget get verticalSpace => SizedBox(
        height: this?.toDouble(),
      );

  Widget get horizontalSpace => SizedBox(
        width: this?.toDouble(),
      );

  num toFloorPrecision(int n) {
    num mod = pow(10, n.toDouble());
    return (((this ?? 0) * mod).floor().toDouble() / mod);
  }

  num toRoundPrecision(int n) {
    num mod = pow(10, n.toDouble());
    return (((this ?? 0) * mod).round().toDouble() / mod);
  }
}
