// ignore_for_file: library_private_types_in_public_api

import 'package:ecommerce/models/shoe.dart';
import 'package:flutter/material.dart';

import '../components/shoe_tile.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  _ShopPageState createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  final List shoes = [
    Shoe(
        name: 'airmaxtatti',
        price: '69',
        imagePath: 'lib/images/Air Max Scorpion.webp',
        description: 'description')
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
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
        Expanded(child: ListView.builder(
          itemBuilder: (context, index) {
            return ShoeTile(
              shoe: shoes[0],
            );
          },
        ))
        // list of items
      ],
    );
  }
}
