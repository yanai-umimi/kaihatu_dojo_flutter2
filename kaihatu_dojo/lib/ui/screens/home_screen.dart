import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import '../../constants/pallete.dart';
import 'package:http/http.dart' as http;

class HomeScreen extends StatelessWidget {
  final String text;

  HomeScreen({required this.text}) : super();
  List items = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('本棚'),
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
              Icons.add_circle,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () async {
              var response = await http.get(Uri.https(
                  'www.googleapis.com', '/books/v1/volumes', {
                'q': '{Flutter}',
                'maxResults': '40',
                'langRestrict': 'ja'
              }));

              var jsonResponse = jsonDecode(response.body);

              items = jsonResponse['items'];
            },
            child: Text('fetch'),
          ),
          // GridView.count(
          //     crossAxisCount: 3,
          //     mainAxisSpacing: 8,
          //     crossAxisSpacing: 8,
          //     padding: const EdgeInsets.all(8),
          //     children: )
        ],
      ),
    );
  }

  Widget _buildList(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: Column(
              children: <Widget>[
                ListTile(
                  leading: Image.network(
                    items[index]['volumeInfo']['imageLinks']['thumbnail'],
                  ),
                  title: Text(items[index]['volumeInfo']['title']),
                  subtitle: Text(items[index]['volumeInfo']['publishedDate']),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
