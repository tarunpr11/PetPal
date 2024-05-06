import 'package:flutter/material.dart';

class Product {
  final String image;
  final String name;
  int count = 1;
  double price;
  Product({required this.image, required this.name, required this.price});
}

class ProductList {
  static List<Product> products = [];
  static double total = 0;
}

class Cart with ChangeNotifier {
  void addProduct(Product product) {
    if (ProductList.products.contains(product)) {
      ProductList.products[ProductList.products.indexOf(product)].count += 1;
    } else {
      ProductList.products.add(product);
    }
    ProductList.total = totalPrice();
    notifyListeners();
  }

  double totalPrice() {
    double total = 0;
    for (Product item in ProductList.products) {
      total += item.price * item.count;
    }
    return total;
  }

  void removeProduct(Product product) {
    if (ProductList.products[ProductList.products.indexOf(product)].count ==
        1) {
      ProductList.products.remove(product);
    } else {
      ProductList.products[ProductList.products.indexOf(product)].count -= 1;
    }
    ProductList.total = totalPrice();
    notifyListeners();
  }
}
