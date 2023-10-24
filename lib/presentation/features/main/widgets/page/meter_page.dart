import 'package:flutter/material.dart';

import '../../../../utils/constants/enums/app_enum.dart';
import '../../../../utils/extensions/context_extension.dart';
import '../../view-models/main_view_model.dart';
import '../page_template_1.dart';

class MeterPage extends StatelessWidget {
  final MainViewModel mainViewModel;

  const MeterPage({
    super.key,
    required this.mainViewModel,
  });

  @override
  Widget build(BuildContext context) {
    return PageTemplate1(
      title: context.l10n.meter,
      field1: "Ç",
      field2: "T",
      mainViewModel: mainViewModel,
      calculate: Calculate.meter,
    );
  }
}
