import 'package:flutter/material.dart';

import '../../../../utils/constants/app/field_constants.dart';
import '../../../../utils/constants/enums/app_enum.dart';
import '../../../../utils/extensions/context_extension.dart';
import '../../models/field_model.dart';
import '../../view-models/main_view_model.dart';
import '../page_template_1.dart';

class ReelPage extends StatelessWidget {
  final MainViewModel mainViewModel;

  const ReelPage({
    super.key,
    required this.mainViewModel,
  });

  @override
  Widget build(BuildContext context) {
    return PageTemplate1(
      title: context.l10n.reel,
      fields: const [
        FieldConstants.meter,
        FieldModel(left: "Den"),
        FieldModel(left: "Tel sayısı"),
      ],
      mainViewModel: mainViewModel,
      calculate: Calculate.reel,
      result: const FieldModel(right: "kg"),
    );
  }
}
