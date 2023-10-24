import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../utils/constants/enums/app_enum.dart';
import '../../../utils/extensions/context_extension.dart';
import '../state/cubit/calculate_cubit.dart';
import '../view-models/main_view_model.dart';
import 'field.dart';

class PageTemplate1 extends StatefulWidget {
  final String title;
  final String field1;
  final String field2;
  final MainViewModel mainViewModel;
  final Calculate calculate;

  const PageTemplate1({
    super.key,
    required this.title,
    this.field1 = "",
    this.field2 = "",
    required this.mainViewModel,
    required this.calculate,
  });

  @override
  State<PageTemplate1> createState() => _PageTemplate1State();
}

class _PageTemplate1State extends State<PageTemplate1>
    with AutomaticKeepAliveClientMixin<PageTemplate1> {
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
              Field(
                text: widget.field1,
                index: 0,
              ),
              Field(
                text: widget.field2,
                index: 1,
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
                    text: "",
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
