import 'package:flutter/material.dart';

import '../../../utils/extensions/context_extension.dart';
import '../view-models/main_view_model.dart';
import 'template_1.dart';

class DiameterPage extends StatelessWidget {
  final MainViewModel mainViewModel;

  const DiameterPage({
    super.key,
    required this.mainViewModel,
  });

  @override
  Widget build(BuildContext context) {
    return Template1(
      title: context.l10n.diameter,
      field1: "M",
      field2: "T",
      mainViewModel: mainViewModel,
    );
  }
}
