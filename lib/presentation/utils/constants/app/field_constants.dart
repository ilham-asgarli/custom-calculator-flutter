import '../../../features/main/models/field_model.dart';

abstract class FieldConstants {
  static const meter = FieldModel(left: "Metre", right: "MT");
  static const round = FieldModel(left: "Tur", right: "WOE");
  static const diameter = FieldModel(left: "Çap", right: "mm");
  static const rack = FieldModel(left: "Rack");
  static const may = FieldModel(left: "May");
  static const cycle = FieldModel(left: "Devir", right: "rpm");
}
