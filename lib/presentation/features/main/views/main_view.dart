import 'package:flutter/material.dart';

import '../view-models/main_view_model.dart';
import '../widgets/page/diameter_page.dart';
import '../widgets/page/meter_calculate_page.dart';
import '../widgets/page/meter_hour_production_page.dart';
import '../widgets/page/meter_page.dart';
import '../widgets/page/percent_calculate_page.dart';
import '../widgets/page/round_page.dart';

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
          MeterCalculate(mainViewModel: mainViewModel),
          PercentCalculatePage(mainViewModel: mainViewModel),
          MeterHourProductionPage(mainViewModel: mainViewModel),
        ],
      ),
    );
  }
}
