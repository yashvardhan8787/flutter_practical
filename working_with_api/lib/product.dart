// lib/product.dart

class Product {
  final int id;
  final String title;
  final String description;
  final double price;

  const Product({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'] as int,
      title: json['title'] as String,
      description: json['description'] as String,
      price: json['price'] as double,
    );
  }
}
