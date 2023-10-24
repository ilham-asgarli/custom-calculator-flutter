import 'package:injectable/injectable.dart';

import '../state/cubit/calculate_cubit.dart';

@LazySingleton()
class MainViewModel {
  void calculate(CalculateCubit calculateCubit) {
    calculateCubit.calculate();
  }
}
