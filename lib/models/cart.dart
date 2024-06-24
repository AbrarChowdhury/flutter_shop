import 'package:flutter/cupertino.dart';
import 'package:flutter_e_commerse/models/shoe.dart';

class Cart extends ChangeNotifier {
  // list of shoes
  List<Shoe> shoeShop = [
    Shoe(
        name: 'Samba classic',
        price: '235',
        description:
            'The forward-thinking design of the last century still going strong',
        imagePath: 'images/shoe1.jpeg'),
    Shoe(
        name: 'Dumba Pumba',
        price: '235',
        description:
            'The forward-thinking design of the last century still going strong',
        imagePath: 'images/shoe2.jpg'),
    Shoe(
        name: 'Masti Rollers',
        price: '235',
        description:
            'The forward-thinking design of the last century still going strong',
        imagePath: 'images/shoe4.jpg'),
    Shoe(
        name: 'Joshua Kimich',
        price: '235',
        description:
            'The forward-thinking design of the last century still going strong',
        imagePath: 'images/shoe2.jpg'),
  ];

  // list of items in user cart
  List<Shoe> userCart = [];

  // get list of shoes for sale
  List<Shoe> getShoes() {
    return shoeShop;
  }

  // add items to cart
  void addToCart(Shoe shoe) {
    userCart.add(shoe);
  }

  // get cart
  List<Shoe> getCart() {
    return userCart;
  }

  // add items to cart
  void addItemsToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  // remove item from cart
  void removeItemFromCar(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
