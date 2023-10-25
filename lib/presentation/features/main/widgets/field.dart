import 'package:flutter/material.dart';

import '../../../components/textfield/value_text_field.dart';
import '../models/field_model.dart';

class Field extends StatelessWidget {
  final FieldModel? fieldModel;
  final double? value;
  final int? index;

  const Field({
    super.key,
    this.fieldModel,
    this.index,
    this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Center(
            child: Text(fieldModel?.left ?? ""),
          ),
        ),
        Expanded(
          flex: fieldModel != null ? 2 : 8,
          child: ValueTextField(
            index: index,
            value: value,
          ),
        ),
        Expanded(
          child: Center(
            child: Text(fieldModel?.right ?? ""),
          ),
        ),
      ],
    );
  }
}
