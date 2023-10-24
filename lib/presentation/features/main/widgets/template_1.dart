import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../state/cubit/calculate_cubit.dart';
import '../view-models/main_view_model.dart';
import 'field.dart';

class Template1 extends StatefulWidget {
  final String title;
  final String field1;
  final String field2;
  final MainViewModel mainViewModel;

  const Template1({
    super.key,
    required this.title,
    required this.field1,
    required this.field2,
    required this.mainViewModel,
  });

  @override
  State<Template1> createState() => _Template1State();
}

class _Template1State extends State<Template1>
    with AutomaticKeepAliveClientMixin<Template1> {
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
                  );
                },
                child: Text("Hesapla"),
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
