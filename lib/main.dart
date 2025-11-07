import 'package:flutter/material.dart';
import 'point_counter.dart';

class CounterApp extends StatelessWidget{
  
  const CounterApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PointCounter(),
    );
  }
}


void main() {
  runApp(CounterApp());
}
