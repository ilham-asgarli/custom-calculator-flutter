import 'package:freezed_annotation/freezed_annotation.dart';

part 'field_model.freezed.dart';

@freezed
class FieldModel with _$FieldModel {
  const factory FieldModel({
    String? left,
    String? center,
    String? right,
  }) = _FieldModel;

  factory FieldModel.result({
    required FieldModel fieldModel,
  }) =>
      FieldModel(
        left: "",
        right: fieldModel.right,
        center: fieldModel.center,
      );
}
