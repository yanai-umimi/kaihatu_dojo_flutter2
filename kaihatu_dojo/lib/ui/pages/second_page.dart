import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  final int number;

  SecondPage({required this.number}) : super();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('My number is: $number'),
      ),
    );
  }
}
