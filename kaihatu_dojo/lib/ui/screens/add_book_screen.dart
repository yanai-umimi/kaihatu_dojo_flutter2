import 'dart:convert';

import 'package:flutter/material.dart';
import '../../constants/pallete.dart';
import 'package:http/http.dart' as http;

class AddBookScreen extends StatelessWidget {
  List items = [];

  AddBookScreen() : super();

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
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 200, right: 30, left: 30),
              child: Column(
                children: [
                  const TextField(
                    enabled: true,
                    maxLines: 1,
                    obscureText: false,
                    decoration: InputDecoration(
                      hintText: 'ISBN',
                      labelText: 'ISBN',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed('/screens/confirm_book',
                            arguments: 'PPP');
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Palette.primaryColor,
                      ),
                      child: const Text('本を追加する'),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
