import 'package:flutter/material.dart';

import '../../../../utils/constants/app/field_constants.dart';
import '../../../../utils/constants/enums/app_enum.dart';
import '../../../../utils/extensions/context_extension.dart';
import '../../models/field_model.dart';
import '../../view-models/main_view_model.dart';
import '../page_template_1.dart';

class DiameterPage extends StatelessWidget {
  final MainViewModel mainViewModel;

  const DiameterPage({
    super.key,
    required this.mainViewModel,
  });

  @override
  Widget build(BuildContext context) {
    return PageTemplate1(
      title: context.l10n.diameter,
      fields: const [
        FieldConstants.meter,
        FieldConstants.round,
      ],
      result: FieldModel.result(fieldModel: FieldConstants.diameter),
      mainViewModel: mainViewModel,
      calculate: Calculate.diameter,
    );
  }
}
