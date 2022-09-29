import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:kaihatu_dojo/data/providers/books/booksAPI.dart';

import '../../constants/pallete.dart';
import '../../data/models/books/books.dart';

class BookShelfScreen extends StatefulWidget {
  const BookShelfScreen({Key? key}) : super(key: key);

  @override
  State<BookShelfScreen> createState() => _BookShelfScreenState();
}

class _BookShelfScreenState extends State<BookShelfScreen> {
  List<Book>? books;
  var isLoaded = false;

  @override
  void initState() {
    super.initState();

    getData();
  }

  getData() async {
    books = (await BookProvider().getBooks()) as List<Book>?;
    if (books != null) {
      setState(() {
        isLoaded = true;
      });
    }
  }

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
        body: Visibility(
          visible: isLoaded,
          child: ListView.builder(
              itemCount: books?.length,
              itemBuilder: (context, index) {
                return Container(
                    child: Text(books![index].totalItems.toString()));
              }),
          replacement: const Center(
            child: CircularProgressIndicator(),
          ),
        ));
  }
}
