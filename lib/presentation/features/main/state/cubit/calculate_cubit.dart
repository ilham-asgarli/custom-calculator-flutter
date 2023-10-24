import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../utils/constants/enums/app_enum.dart';

part 'calculate_cubit.freezed.dart';
part 'calculate_state.dart';

@injectable
class CalculateCubit extends Cubit<CalculateState> {
  CalculateCubit() : super(const CalculateState());

  void calculate(Calculate calculate) {
    double result = switch (calculate) {
      Calculate.diameter =>
        2000 * (state.fields["0"] ?? 0) / (state.fields["1"] ?? 0) - 945,
      Calculate.round =>
        2000 * (state.fields["0"] ?? 0) / ((state.fields["1"] ?? 0) + 945),
      Calculate.meter =>
        (945 + (state.fields["0"] ?? 0)) / 2000 * (state.fields["1"] ?? 0),
      Calculate.meterCalculate => 0,
      Calculate.percentCalculate => 0,
      Calculate.meterHourProduction => 0,
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
}
