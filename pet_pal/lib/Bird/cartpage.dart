import 'package:flutter/material.dart';
import 'package:pet_pal/cart.dart';
import 'package:provider/provider.dart';

class CartPage extends StatefulWidget {
  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  double total = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(builder: (context, Cart, child) {
      return Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: ProductList
                      .products.length, // Replace with actual item count
                  itemBuilder: (context, index) {
                    return ShoppingCartItem(
                        // Replace with actual data for each item
                        product: ProductList.products[index]);
                  },
                ),
              ),
              const SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total: ',
                    style: TextStyle(fontSize: 18.0),
                  ),
                  Text(
                    '\$${total}', // Replace with calculated total
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  setState(() {});
                  total = ProductList.total;
                  // Handle checkout or next step logic
                },
                child: const Text('Checkout'),
              ),
            ],
          ),
        ),
      );
    });
  }
}

class ShoppingCartItem extends StatefulWidget {
  Product product;

  ShoppingCartItem({Key? key, required this.product}) : super(key: key);

  @override
  State<ShoppingCartItem> createState() => _ShoppingCartItemState();
}

class _ShoppingCartItemState extends State<ShoppingCartItem> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 80.0,
          height: 80.0,
          child: Image.asset(
              widget.product.image), // Placeholder for product image
        ),
        const SizedBox(width: 16.0),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.product.name,
                style: const TextStyle(fontSize: 16.0),
              ),
              Text(
                '\$${(widget.product.price).toStringAsFixed(2)}',
                style: TextStyle(fontSize: 14.0, color: Colors.grey),
              ),
              const SizedBox(height: 8.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      IconButton(
                        icon: const Icon(Icons.remove, color: Colors.grey),
                        onPressed: () {
                          setState(() {
                            Cart().removeProduct(widget.product);
                          });
                        }, // Handle quantity decrease (optional)
                      ),
                      Text(
                          '${widget.product.count}'), // Replace with actual quantity
                      IconButton(
                        icon: const Icon(Icons.add, color: Colors.grey),
                        onPressed: () {
                          setState(() {
                            Cart().addProduct(widget.product);
                          });
                        }, // Handle quantity increase (optional)
                      ),
                    ],
                  ),
                  IconButton(
                    icon: const Icon(Icons.delete, color: Colors.grey),
                    onPressed: () {}, // Handle remove item (optional)
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
