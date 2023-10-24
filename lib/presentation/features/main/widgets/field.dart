import 'package:flutter/material.dart';

import '../../../components/textfield/value_text_field.dart';

class Field extends StatelessWidget {
  final String? text;
  final double? value;
  final int? index;

  const Field({
    super.key,
    this.text,
    this.index,
    this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Center(
            child: Text(text ?? ""),
          ),
        ),
        Expanded(
          flex: text != null ? 2 : 8,
          child: ValueTextField(
            index: index,
            value: value,
          ),
        ),
        const Spacer(),
      ],
    );
  }
}
