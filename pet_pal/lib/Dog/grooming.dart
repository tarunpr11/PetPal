import 'package:flutter/material.dart';
import 'package:pet_pal/cart.dart';
import 'cartpage.dart';

class GroomingPage extends StatelessWidget {
  final List<Product> products = [
    Product(image: 'dogproducts/DogShampoo.png', name: 'Shampoo', price: 150.0),
    Product(
        image: 'dogproducts/DogConditioner.png',
        name: 'Conditioner',
        price: 150.0),
    Product(
        image: 'dogproducts/DogEarCleaner.png',
        name: 'Ear Cleaner',
        price: 150.0),
    Product(
        image: 'dogproducts/DogNailClipper.png',
        name: 'Nail Clipper',
        price: 150.0),
    Product(image: 'dogproducts/DogComb.png', name: 'Dog Comb', price: 150.0),
    Product(
        image: 'dogproducts/DogToothBrush.png',
        name: 'Toothbrush',
        price: 150.0),
    // Add more products here
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.builder(
        padding: const EdgeInsets.all(8.0),
        itemCount: products.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Adjust number of items in a row
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
        ),
        itemBuilder: (context, index) {
          return Card(
            color: Color(0xFFFFF7F7),
            clipBehavior: Clip.antiAlias,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Image.asset(
                    products[index].image,
                    fit: BoxFit.cover,
                  ),
                ),
                TextButton(
                  child: Text(
                    products[index].name +
                        "\n    \$" +
                        "${products[index].price}",
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                  onPressed: () {
                    Cart().addProduct(products[index]);
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
