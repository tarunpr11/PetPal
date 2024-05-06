import 'package:flutter/material.dart';
import 'package:pet_pal/cart.dart';
import 'cartpage.dart';

class AccPage extends StatelessWidget {
  final List<Product> products = [
    Product(image: 'dogproducts/DogBed.png', name: 'Soft Bed', price: 150.0),
    Product(image: 'dogproducts/DogBoots.png', name: 'Paw Boots', price: 150.0),
    Product(
        image: 'dogproducts/DogCollar.png',
        name: 'Collar(5 Pack)',
        price: 150.0),
    Product(image: 'dogproducts/DogLeash.png', name: 'Dog Leash', price: 150.0),
    Product(
        image: 'dogproducts/DogPlushie.png',
        name: 'Cute Plushie',
        price: 150.0),
    Product(
        image: 'dogproducts/DogSweater.png',
        name: 'Fluffy Sweater',
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
