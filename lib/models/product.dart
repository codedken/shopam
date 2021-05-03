import 'package:flutter/foundation.dart';

class Product {
  final String title;
  final String description;
  final String uploader;
  final String imageUrl;
  final double price;
  bool isFavorite;

  Product({
    @required this.title,
    @required this.description,
    @required this.uploader,
    @required this.imageUrl,
    @required this.price,
    @required this.isFavorite,
  });
}
