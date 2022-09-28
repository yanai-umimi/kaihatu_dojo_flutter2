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
        // leading: IconButton(
        //   onPressed: () => {
        //     Navigator.of(context).pushNamed('/get-started'),
        //   },
        //   icon: Icon(
        //     Icons.play_arrow_outlined,
        //     color: Palette.secondaryColor,
        //   ),
        // ),
        actions: [
          IconButton(
            onPressed: () => {
              Navigator.of(context).pushNamed('/screens/add_book'),
            },
            icon: const Icon(
              Icons.filter_9_plus_outlined,
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
