import 'package:flutter/material.dart';
import 'package:pet_pal/cart.dart';

class DecorationPage extends StatelessWidget {
  final List<Product> products = [
    Product(image: 'birdproducts/BirdCageMirror.png', name: 'Cage Mirror', price: 150.0),
    Product(image: 'birdproducts/BirdCageSwing.png', name: 'Cage Swing', price: 150.0),
    Product(image: 'birdproducts/BirdFeeder.png', name: 'Feeder', price: 150.0),
    Product(image: 'birdproducts/BirdForagingToys.png', name: 'Foraging Toys', price: 150.0),
    Product(image: 'birdproducts/BirdSeagrassMats.png', name: 'Seagrass Mats', price: 150.0),
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
            color: Color(0xFFE4FFE5),
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
