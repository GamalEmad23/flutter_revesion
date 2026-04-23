// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sec_flutter/statemangement_examples/counter_example/cubit/counter_cubit.dart';

class Counter extends StatefulWidget {
  Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  @override
  Widget build(BuildContext context) {
    var cubit = context.read<CounterCubit>();
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          cubit.increment();
        },
        child: Text("Add"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            Text("Hello Gamal"),
            Text("Hello Gamal"),
            Text("Hello Gamal"),
            BlocBuilder<CounterCubit, CounterState>(
              builder: (context, state) {
                return Text(
                  "${cubit.counter}",
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
