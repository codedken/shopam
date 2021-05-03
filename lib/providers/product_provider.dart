import 'package:flutter/material.dart';
import '../models/product.dart';

class ProductProvider with ChangeNotifier {
  List<Product> _products = [
    Product(
      title: 'Irul Chair',
      description: 'Ergonomical for humans body curve',
      uploader: 'Seto',
      imageUrl: 'assets/images/cushion2.png',
      price: 102.00,
      isFavorite: false,
    ),
    Product(
      title: 'Malik Chair',
      description: 'Extra comfy chair with a palm rest',
      uploader: 'Karjo',
      imageUrl: 'assets/images/cushion.png',
      price: 221.00,
      isFavorite: false,
    )
  ];

  List<Product> get products {
    return [..._products];
  }

  void addProduct(Product product) {
    _products.add(product);
    notifyListeners();
  }
}
