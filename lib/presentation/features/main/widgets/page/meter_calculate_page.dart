import 'package:flutter/material.dart';

import '../../../../utils/constants/app/field_constants.dart';
import '../../../../utils/constants/enums/app_enum.dart';
import '../../../../utils/extensions/context_extension.dart';
import '../../models/field_model.dart';
import '../../view-models/main_view_model.dart';
import '../page_template_1.dart';

class MeterCalculate extends StatelessWidget {
  final MainViewModel mainViewModel;

  const MeterCalculate({
    super.key,
    required this.mainViewModel,
  });

  @override
  Widget build(BuildContext context) {
    return PageTemplate1(
      title: context.l10n.meterCalculate,
      mainViewModel: mainViewModel,
      calculate: Calculate.meterCalculate,
      fields: const [
        FieldConstants.rack,
        FieldConstants.may,
      ],
      result: FieldModel.result(
        fieldModel: FieldConstants.meter.copyWith(
          right: "1 MT",
        ),
      ),
    );
  }
}
