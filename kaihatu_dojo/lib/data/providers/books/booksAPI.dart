import 'package:kaihatu_dojo/data/models/books/books.dart';
import 'package:http/http.dart' as http;

class BookProvider {
  Future<Book?> getBooks() async {
    var client = http.Client();
    var uri = Uri.parse('https://jsonplaceholder.typicode.com');
    var response = await client.get(uri);
    if (response.statusCode == 200) {
      var json = response.body;
      return bookFromJson(json);
    }
    return null;
  }
}
