import 'dart:convert';

import '../../models/books/books.dart';
import '../../providers/books/booksAPI.dart';

class HomeScreenRepository {
  final BooksAPI recentlyViewedItemsAPI = BooksAPI();

  Future<List<Books>> getRecentlyViewedItem() async {
    List<dynamic> data =
        json.decode(await recentlyViewedItemsAPI.getRawRecentlyViewedItems());
    return data.map((e) => Books.fromMap(e as Map<String, dynamic>)).toList();
  }
}
