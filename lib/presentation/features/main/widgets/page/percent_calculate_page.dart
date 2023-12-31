import 'package:flutter/material.dart';

import '../../../../utils/constants/enums/app_enum.dart';
import '../../../../utils/extensions/context_extension.dart';
import '../../models/field_model.dart';
import '../../view-models/main_view_model.dart';
import '../page_template_2.dart';

class PercentCalculatePage extends StatelessWidget {
  final MainViewModel mainViewModel;

  const PercentCalculatePage({
    super.key,
    required this.mainViewModel,
  });

  @override
  Widget build(BuildContext context) {
    return PageTemplate2(
      title: context.l10n.percentCalculate,
      mainViewModel: mainViewModel,
      calculate: Calculate.percentCalculate,
      columnCount: 2,
      fields: const [
        FieldModel(center: "GB1", right: "%"),
        FieldModel(center: "GB2", right: "%"),
        FieldModel(center: "GB3", right: "%"),
      ],
    );
  }
}
