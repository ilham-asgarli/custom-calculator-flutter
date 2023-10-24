part of 'calculate_cubit.dart';

@freezed
class CalculateState with _$CalculateState {
  const factory CalculateState({
    @Default({}) Map<String, double> fields,
    @Default(0.0) double result,
  }) = _CalculateState;
}
