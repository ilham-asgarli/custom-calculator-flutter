import 'package:flutter/material.dart';

import '../view-models/main_view_model.dart';
import '../widgets/diameter_page.dart';
import '../widgets/meter_page.dart';
import '../widgets/round_page.dart';

class MainView extends StatelessWidget {
  final MainViewModel mainViewModel;

  const MainView({
    super.key,
    required this.mainViewModel,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: PageView(
        children: [
          DiameterPage(mainViewModel: mainViewModel),
          RoundPage(mainViewModel: mainViewModel),
          MeterPage(mainViewModel: mainViewModel),
        ],
      ),
    );
  }
}
