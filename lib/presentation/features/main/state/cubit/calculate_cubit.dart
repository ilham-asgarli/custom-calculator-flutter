import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'calculate_cubit.freezed.dart';
part 'calculate_state.dart';

@injectable
class CalculateCubit extends Cubit<CalculateState> {
  CalculateCubit() : super(const CalculateState());

  void calculate() {
    double result = (state.fields["0"] ?? 0) + (state.fields["1"] ?? 0);
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
