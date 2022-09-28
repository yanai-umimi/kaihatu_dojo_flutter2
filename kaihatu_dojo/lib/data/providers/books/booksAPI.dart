import 'dart:convert';

class BooksAPI {
  Future<dynamic> getRawRecentlyViewedItems() async {
    dynamic data = json.encode([
      {'id': 1, 'price': 1000, 'itemName': 'First item'},
      {'id': 2, 'price': 1500, 'itemName': 'Second item'},
    ]);
    await Future.delayed(const Duration(milliseconds: 200));
    return data;
  }
}
