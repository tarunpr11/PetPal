import 'package:flutter/material.dart';
import 'package:pet_pal/cart.dart';

class FoodPage extends StatelessWidget {
  final List<Product> products = [
    Product(
        image: 'fishproducts/FishBloodworms.png',
        name: 'Blood Worms',
        price: 150.0),
    Product(
        image: 'fishproducts/FishBrineShrimp.png',
        name: 'Brine Shrimp',
        price: 150.0),
    Product(
        image: 'fishproducts/FishFlakeFood.png',
        name: 'Flake Food',
        price: 150.0),
    Product(
        image: 'fishproducts/FishPelletFood.png',
        name: 'Pellet Food',
        price: 150.0),
    Product(
        image: 'fishproducts/FishSpirulinaFlakes.png',
        name: 'Spirulina Flakes',
        price: 150.0),
    Product(
        image: 'fishproducts/FishVegetableTablets.png',
        name: 'Vegetable Tablets',
        price: 150.0)
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
            color: Color(0xFFDEFFFD),
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
