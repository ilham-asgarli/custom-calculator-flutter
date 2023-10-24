import 'package:injectable/injectable.dart';

import '../../../utils/constants/enums/app_enum.dart';
import '../state/cubit/calculate_cubit.dart';

@LazySingleton()
class MainViewModel {
  void calculate(
    CalculateCubit calculateCubit,
    Calculate calculate,
  ) {
    calculateCubit.calculate(calculate);
  }
}
