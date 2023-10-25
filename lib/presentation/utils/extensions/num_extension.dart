import 'dart:math';

import 'package:flutter/widgets.dart';

extension NumExtension on num? {
  Widget get verticalSpace => SizedBox(
        height: this?.toDouble(),
      );

  Widget get horizontalSpace => SizedBox(
        width: this?.toDouble(),
      );

  num toPrecision(int n, {bool round = false}) {
    num mod = pow(10, n);

    num a = ((this ?? 0) * mod);
    num b = round ? a.round() : a.floor();
    num result = b / mod;
    return result == result.safeToInt ? result.safeToInt : result;
  }

  num toRoundPrecision(int n) {
    return toPrecision(n, round: true);
  }

  num toRoundAsFixed(int n) {
    return toAsFixed(n, round: true);
  }

  num toAsFixed(int n, {bool round = false}) {
    num tenth = (log(this ?? 0) / log(10)).safeToInt;

    if (tenth < n) {
      num power = tenth > 0
          ? n - tenth - 1
          : tenth == 0
              ? n - 1
              : n + tenth;
      num mod = pow(10, power);

      num a = ((this ?? 0) * mod);
      num b = round ? a.round() : a.floor();
      num result = b / mod;
      return result == result.safeToInt ? result.safeToInt : result;
    } else {
      return (this ?? 0).safeToInt;
    }
  }

  num get safeToInt {
    try {
      return (this ?? 0).toInt();
    } catch (e) {
      return (this ?? 0);
    }
  }
}
