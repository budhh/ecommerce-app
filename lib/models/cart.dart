import 'package:flutter/material.dart';

import 'shoe.dart';

class Cart extends ChangeNotifier {
  // list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
        name: 'Air Jordans 1',
        price: '280',
        imagePath: 'lib/images/nike.png',
        description: 'this is a cool shoe'),
    Shoe(
        name: 'Air Jordans 2',
        price: '500',
        imagePath: 'lib/images/nike.png',
        description:
            'Reprehenderit elit et duis officia dolor excepteur elit voluptate consequat sint elit velit ullamco enim.'),
    Shoe(
        name: 'Air Jordans 3',
        price: '6900',
        imagePath: 'lib/images/nike.png',
        description: 'this is a cool shoe'),
    Shoe(
        name: 'Air Jordans 4',
        price: '32000',
        imagePath: 'lib/images/nike.png',
        description:
            'Enim sint cupidatat non quis duis amet quis non sit ipsum dolore consequat.'),
  ];

  // list of items that use put in cart
  List<Shoe> userCart = [];

  // get list of items for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  // get cart
  List<Shoe> getCart() {
    return userCart;
  }

  // add items to cart

  void addCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  // remove items from cart
  void removeItems(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
