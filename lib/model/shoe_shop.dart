import 'package:flutter/material.dart';
import 'package:sneakershop/model/shoe.dart';

class ShoeShop extends ChangeNotifier {
//list of sneakers for sale
  final List<Shoe> _shop = [
    //nike shoe
    Shoe(name: 'nike', price: '10', imagePathe: 'lib/images/nike.png'),

    //airforce shoe
    Shoe(name: 'airforce', price: '15', imagePathe: 'lib/images/airforce.png'),

    //jordan shoe
    Shoe(name: 'jordan', price: '20', imagePathe: 'lib/images/jordan.png'),

    //yezzy shoe
    Shoe(name: 'yezzy', price: '25', imagePathe: 'lib/images/yezzy.png')
  ];

//list of items on buyer cart
  List<Shoe> _buyerCart = [];

//get available shoe for sale list
  List<Shoe> get shoeShop => _shop;

//get available buyer cart list
  List<Shoe> get buyerCart => _buyerCart;

//add shoes to buyers cart
  addShoeToCart(Shoe shoe) {
    _buyerCart.add(shoe);
    notifyListeners();
  }

//remove shoes from buyers cart
  removeShoeFromCart(Shoe shoe) {
    _buyerCart.remove(shoe);
    notifyListeners();
  }
}
