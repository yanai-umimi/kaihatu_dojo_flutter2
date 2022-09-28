import 'package:flutter/material.dart';
import '../../constants/pallete.dart';

class AddBookScreen extends StatelessWidget {
  final String text;

  AddBookScreen({required this.text}) : super();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('追加'),
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
      ),
      body: Center(
        child: Text('こここ: $text'),
      ),
    );
  }
}
