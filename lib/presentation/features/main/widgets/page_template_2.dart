import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../utils/constants/enums/app_enum.dart';
import '../../../utils/extensions/context_extension.dart';
import '../state/cubit/calculate_cubit.dart';
import '../view-models/main_view_model.dart';
import 'field.dart';

class PageTemplate2 extends StatefulWidget {
  final String title;
  final MainViewModel mainViewModel;
  final Calculate calculate;

  const PageTemplate2({
    super.key,
    required this.title,
    required this.mainViewModel,
    required this.calculate,
  });

  @override
  State<PageTemplate2> createState() => _PageTemplate2State();
}

class _PageTemplate2State extends State<PageTemplate2>
    with AutomaticKeepAliveClientMixin<PageTemplate2> {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
        ),
        centerTitle: true,
      ),
      body: BlocProvider(
        create: (context) => CalculateCubit(),
        child: Builder(builder: (context) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Row(
                children: [
                  Expanded(
                    child: Field(
                      index: 0,
                    ),
                  ),
                  Expanded(
                    child: Field(
                      index: 4,
                    ),
                  )
                ],
              ),
              const Row(
                children: [
                  Expanded(
                    child: Field(
                      index: 1,
                    ),
                  ),
                  Expanded(
                    child: Field(
                      index: 5,
                    ),
                  )
                ],
              ),
              const Row(
                children: [
                  Expanded(
                    child: Field(
                      index: 3,
                    ),
                  ),
                  Expanded(
                    child: Field(
                      index: 6,
                    ),
                  )
                ],
              ),
              ElevatedButton(
                onPressed: () {
                  widget.mainViewModel.calculate(
                    BlocProvider.of<CalculateCubit>(context),
                    widget.calculate,
                  );
                },
                child: Text(
                  context.l10n.calculate,
                ),
              ),
              BlocBuilder<CalculateCubit, CalculateState>(
                builder: (context, state) {
                  return Field(
                    value: state.result,
                  );
                },
              ),
            ],
          );
        }),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
