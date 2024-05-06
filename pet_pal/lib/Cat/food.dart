import 'package:flutter/material.dart';
import 'package:pet_pal/cart.dart';

class FoodPage extends StatelessWidget {
  final List<Product> products = [
    Product(
        image: 'catproducts/CannedWetFood.png',
        name: 'Canned Wet Food',
        price: 150.0),
    Product(image: 'catproducts/CatTreats.png', name: 'Treats', price: 150.0),
    Product(
        image: 'catproducts/DehydratedCatFood.png',
        name: 'Dehydrated Food',
        price: 150.0),
    Product(
        image: 'catproducts/DryCatFood.png',
        name: 'Dry Cat Food',
        price: 150.0),
    Product(
        image: 'catproducts/FrozenCatFood.png',
        name: 'Frozen Cat Food',
        price: 150.0), // Add more products here
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
            color: Color(0xFFFFFCDD),
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
