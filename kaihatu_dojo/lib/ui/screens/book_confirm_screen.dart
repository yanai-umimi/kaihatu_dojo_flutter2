import 'package:flutter/material.dart';

import '../../constants/pallete.dart';

class BookConfirmScreen extends StatefulWidget {
  final String isbn;
  BookConfirmScreen({required this.isbn}) : super();
  @override
  State<BookConfirmScreen> createState() => _BookConfirmScreenState(isbn: isbn);
}

class _BookConfirmScreenState extends State<BookConfirmScreen> {
  final String isbn;

  _BookConfirmScreenState({required this.isbn}) : super();
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments;
    print('$args,popopopopo'); // "渡したい引数"
    return Scaffold(
      appBar: AppBar(
        title: const Text('追加'),
        backgroundColor: Palette.primaryColor,
      ),
      body: Text(isbn),
    );
  }
}
