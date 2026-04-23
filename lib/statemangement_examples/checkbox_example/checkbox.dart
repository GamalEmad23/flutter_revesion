// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sec_flutter/statemangement_examples/checkbox_example/cubit/checkbox_cubit.dart';

class CheckboxScreen extends StatefulWidget {
  CheckboxScreen({super.key});

  @override
  State<CheckboxScreen> createState() => _CheckboxScreenState();
}

class _CheckboxScreenState extends State<CheckboxScreen> {
  @override
  Widget build(BuildContext context) {
    var cubit = context.read<CheckboxCubit>();

    return Scaffold(
      body: Column(
        mainAxisAlignment: .center,
        children: [
          Center(
            child: BlocBuilder<CheckboxCubit, CheckboxState>(
              builder: (context, state) {
                return Checkbox(
                  value: cubit.selected,
                  onChanged: (value) {
                    cubit.changeSelected(value!);
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
