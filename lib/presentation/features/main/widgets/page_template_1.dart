import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../utils/constants/enums/app_enum.dart';
import '../../../utils/extensions/context_extension.dart';
import '../models/field_model.dart';
import '../state/cubit/calculate_cubit.dart';
import '../view-models/main_view_model.dart';
import 'field.dart';

class PageTemplate1 extends StatefulWidget {
  final String title;
  final List<FieldModel> fields;
  final FieldModel result;
  final MainViewModel mainViewModel;
  final Calculate calculate;

  const PageTemplate1({
    super.key,
    required this.title,
    required this.fields,
    required this.mainViewModel,
    required this.calculate,
    this.result = const FieldModel(
      left: "",
      right: "",
    ),
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
              for (int i = 0; i < widget.fields.length; i++)
                Field(
                  fieldModel: widget.fields[i],
                  index: i,
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
                    value: () {
                      try {
                        return state.result.first;
                      } catch (e) {
                        return 0;
                      }
                    }(),
                    fieldModel: widget.result,
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
