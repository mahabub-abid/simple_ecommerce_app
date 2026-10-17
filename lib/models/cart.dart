import 'package:flutter/cupertino.dart';
import 'package:simple_ecommerce_app/models/shoe.dart';

class Cart extends ChangeNotifier {
  //list of shoe for sale
  List<Shoe> shoeShop = [
    Shoe(
      name: 'ZOOM FREAK',
      price: '236',
      imagePath: 'images/shoes_image_2.jpg',
      description: 'The forword-thinking disign of his latest signature shoe.',
    ),
    Shoe(
      name: 'Air Jordan',
      price: '220',
      imagePath: 'images/shoes_image_3.jpg',
      description: "You've got the speed confidence.",
    ),
    Shoe(
      name: 'KD Tready',
      price: '225',
      imagePath: 'images/shoes_image_4.jpg',
      description: 'The best shoes you ever seen👀',
    ),
    Shoe(
      name: 'Kyrie 6',
      price: '180',
      imagePath: 'images/shoes_image_1.jpg',
      description: 'Yeah! This is available to buy.',
    ),
  ];

  //list of items in user cart
  List<Shoe> userCart = [];

  //get list shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  //get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  //add item to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  //remove item from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
