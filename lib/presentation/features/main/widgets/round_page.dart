import 'package:flutter/material.dart';

import '../../../utils/extensions/context_extension.dart';
import '../view-models/main_view_model.dart';
import 'template_1.dart';

class RoundPage extends StatelessWidget {
  final MainViewModel mainViewModel;

  const RoundPage({
    super.key,
    required this.mainViewModel,
  });

  @override
  Widget build(BuildContext context) {
    return Template1(
      title: context.l10n.round,
      field1: "M",
      field2: "Ç",
      mainViewModel: mainViewModel,
    );
  }
}
