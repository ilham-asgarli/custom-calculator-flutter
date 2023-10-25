import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../features/main/state/cubit/calculate_cubit.dart';
import '../../utils/extensions/context_extension.dart';
import '../../utils/extensions/theme_extension.dart';

class ValueTextField extends StatelessWidget {
  final num? value;
  final int? index;

  const ValueTextField({
    super.key,
    this.value,
    this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: context.theme.customColors.primary,
        ),
      ),
      child: TextField(
        controller: TextEditingController(
          text: getText(),
        ),
        decoration: const InputDecoration(
          border: InputBorder.none,
          hintText: "0",
        ),
        keyboardType: TextInputType.number,
        inputFormatters: [
          FilteringTextInputFormatter.allow(RegExp(r'^(\d+)?\.?\d{0,20}'))
        ],
        textAlign: TextAlign.center,
        onChanged: (value) {
          if (index != null) {
            BlocProvider.of<CalculateCubit>(context).setField(
              index!,
              getValue(value),
            );
          }
        },
      ),
    );
  }

  String getText() {
    if (value == null) {
      return "";
    } else if (value == 0) {
      return "";
    } else {
      return value.toString();
    }
  }

  double getValue(String? value) {
    try {
      return double.parse(value ?? "");
    } catch (e) {
      return 0;
    }
  }
}
