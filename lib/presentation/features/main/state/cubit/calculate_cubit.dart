import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../utils/constants/enums/app_enum.dart';
import '../../../../utils/extensions/num_extension.dart';

part 'calculate_cubit.freezed.dart';
part 'calculate_state.dart';

@injectable
class CalculateCubit extends Cubit<CalculateState> {
  CalculateCubit() : super(const CalculateState());

  void calculate(Calculate calculate) {
    List<double> result = switch (calculate) {
      Calculate.diameter => [
          2000 * (state.fields["0"] ?? 0) / (state.fields["1"] ?? 0) - 945
        ],
      Calculate.round => [
          2000 * (state.fields["0"] ?? 0) / ((state.fields["1"] ?? 0) + 945)
        ],
      Calculate.meter => [
          (945 + (state.fields["0"] ?? 0)) / 2000 * (state.fields["1"] ?? 0)
        ],
      Calculate.meterCalculate => [
          ((state.fields["0"] ?? 0) / 480 * (state.fields["1"] ?? 0) / 10)
              .toFloorPrecision(3)
              .toDouble()
        ],
      Calculate.percentCalculate => percentCalculate(),
      Calculate.meterHourProduction => [
          (state.fields["0"] ?? 0) * 60 / (state.fields["1"] ?? 0) / 100
        ],
      Calculate.bobbin => [
          (((state.fields["0"] ?? 0) - (state.fields["1"] ?? 0)) * 9000) /
                  (state.fields["2"] ?? 0) -
              (state.fields["3"] ?? 0)
        ],
    };

    emit(state.copyWith(
      result: result,
    ));
  }

  void setField(int index, double field) {
    emit(state.copyWith(
      fields: Map.from(state.fields)..[index.toString()] = field,
    ));
  }

  List<double> percentCalculate() {
    double sum =
        state.fields.values.reduce((value, element) => value + element);

    double formula(x) {
      return x / sum * 100;
    }

    return state.fields.values.map((e) => formula(e)).toList();
  }
}
