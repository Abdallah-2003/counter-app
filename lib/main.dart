import 'package:flutter/material.dart';
import 'point_counter.dart';

class AbdallahApp extends StatelessWidget{
  
  const AbdallahApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 100,
                height: 40,
                color: Colors.deepPurpleAccent,
                child: Center(
                  child: Text('Abdallah')
                ),
              ),
              Container(
                width: 80,
                height: 40,
                color: Colors.deepPurpleAccent,
                child: Center(
                  child: Text('Khaled')
                ),
              ),
              Container(
                width: 80,
                height: 40,
                color: Colors.deepPurpleAccent,
                child: Center(
                  child: Text('Abdelkader')
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


void main() {
  runApp(PointCounter());
}
