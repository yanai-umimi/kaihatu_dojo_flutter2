// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Books {
  final int id;
  final int price;
  final String itemName;

  Books({
    required this.id,
    required this.price,
    required this.itemName,
  });

  Books copyWith({
    int? id,
    int? price,
    String? itemName,
  }) {
    return Books(
      id: id ?? this.id,
      price: price ?? this.price,
      itemName: itemName ?? this.itemName,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'price': price,
      'itemName': itemName,
    };
  }

  factory Books.fromMap(Map<String, dynamic> map) {
    return Books(
      id: map['id'] as int,
      price: map['price'] as int,
      itemName: map['itemName'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Books.fromJson(String source) =>
      Books.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Books(id: $id, price: $price, itemName: $itemName)';

  @override
  bool operator ==(covariant Books other) {
    if (identical(this, other)) return true;

    return other.id == id && other.price == price && other.itemName == itemName;
  }

  @override
  int get hashCode => id.hashCode ^ price.hashCode ^ itemName.hashCode;
}
