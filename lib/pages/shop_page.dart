// ignore_for_file: library_private_types_in_public_api

import 'package:ecommerce/models/cart.dart';
import 'package:ecommerce/models/shoe.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components/shoe_tile.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  _ShopPageState createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  void addShoeToCart(Shoe shoe) {
    Provider.of<Cart>(context, listen: false).addCart(shoe);

    showDialog(
      context: context,
      builder: (context) => const AlertDialog(
          title: Text('succesfullt added'), content: Text('Check your cart!')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
        builder: (context, value, child) => Column(
              children: [
                // search bar
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                      alignment: AlignmentDirectional.centerEnd,
                      padding: const EdgeInsets.all(20),
                      margin: const EdgeInsets.symmetric(horizontal: 12),
                      decoration: BoxDecoration(
                          color: Colors.grey[100],
                          borderRadius: BorderRadius.circular(12)),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text('SEARCH'),
                          Icon(Icons.search),
                        ],
                      )),
                ),
                // small message
                const Padding(
                  padding: EdgeInsets.all(25.0),
                  child: Text(
                    'Est enim magna Lorem commodo esse non velit qui.',
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        'HOT PICKS',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 24),
                      ),
                      Text(
                        'See all',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.blue),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),

                Expanded(
                    child: ListView.builder(
                  itemCount: value.getShoeList().length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    Shoe shoe = value.getShoeList()[index];
                    return ShoeTile(
                      shoe: shoe,
                      onTapButton: () => addShoeToCart(shoe),
                    );
                  },
                )),
                const Padding(
                    padding: EdgeInsets.only(top: 25, left: 25, right: 25),
                    child: Divider(
                      color: Colors.white,
                    ))
                // list of items
              ],
            ));
  }
}
