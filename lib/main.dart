import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myapps1/cubit/counter_cubit.dart';
import 'point_counter.dart';

class CounterApp extends StatelessWidget {
  const CounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: MaterialApp(home: PointCounter()),
    );
  }
}

void main() {
  runApp(CounterApp());
}
