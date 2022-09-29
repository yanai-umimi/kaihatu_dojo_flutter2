import 'package:flutter/material.dart';

import '../../constants/pallete.dart';

class MyPageScreen extends StatelessWidget {
  final int number;

  MyPageScreen({required this.number}) : super();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Palette.primaryColor,
        title: const Text("タイムライン"),
        actions: [
          IconButton(
            onPressed: () => {
              Navigator.of(context).pushNamed('/screens/settings'),
            },
            icon: const Icon(
              Icons.settings,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: Center(
        child: Text('My number is: $number'),
      ),
    );
  }
}
