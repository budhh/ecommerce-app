import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/cart.dart';
import '../models/shoe.dart';

class CartItem extends StatelessWidget {
  final Shoe shoe;
  const CartItem({super.key, required this.shoe});

  @override
  Widget build(BuildContext context) {
    void removeItemsFromCart() {
      Provider.of<Cart>(context, listen: false).removeItems(shoe);
    }

    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(8)),
      margin: const EdgeInsets.only(bottom: 10),
      child: ListTile(
        leading: Image.asset(shoe.imagePath),
        title: Text(shoe.name),
        subtitle: Text(shoe.price),
        trailing: IconButton(
            onPressed: removeItemsFromCart, icon: const Icon(Icons.delete)),
      ),
    );
  }
}
