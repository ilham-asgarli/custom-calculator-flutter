import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../utils/constants/enums/app_enum.dart';
import '../../../utils/extensions/context_extension.dart';
import '../models/field_model.dart';
import '../state/cubit/calculate_cubit.dart';
import '../view-models/main_view_model.dart';
import 'field.dart';

class PageTemplate2 extends StatefulWidget {
  final String title;
  final MainViewModel mainViewModel;
  final Calculate calculate;
  final List<FieldModel> fields;
  final int columnCount;

  const PageTemplate2({
    super.key,
    required this.title,
    required this.mainViewModel,
    required this.calculate,
    required this.fields,
    required this.columnCount,
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
        child: Builder(
          builder: (context) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                for (int i = 0; i < widget.fields.length; i++)
                  Row(
                    children: [
                      for (int j = 0; j < widget.columnCount * 2 - 1; j++)
                        j % widget.columnCount != 0
                            ? Center(
                                child: Text(widget.fields[i].center.toString()),
                              )
                            : Expanded(
                                child: (j + 1) % (widget.columnCount * 2 - 1) !=
                                        0
                                    ? Field(
                                        index: i,
                                        fieldModel: (j + 1) %
                                                    (widget.columnCount * 2 -
                                                        1) !=
                                                0
                                            ? const FieldModel(right: "")
                                            : widget.fields[i],
                                      )
                                    : BlocBuilder<CalculateCubit,
                                        CalculateState>(
                                        builder: (context, state) {
                                          return Field(
                                            index: i,
                                            fieldModel: (j + 1) %
                                                        (widget.columnCount *
                                                                2 -
                                                            1) !=
                                                    0
                                                ? const FieldModel(right: "")
                                                : widget.fields[i],
                                            value: () {
                                              try {
                                                return state.result[i];
                                              } catch (e) {
                                                return 0;
                                              }
                                            }(),
                                          );
                                        },
                                      ),
                              ),
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
              ],
            );
          },
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
