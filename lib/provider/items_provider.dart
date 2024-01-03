import 'package:flutter/material.dart';

class ItemsProvider extends ChangeNotifier {
  final List items = [
    ['Suri', 'images/suri', '12', Colors.green],
    ['kemis', 'images/suri', '16', Colors.blue],
    ['tishert', 'images/suri', '9', Colors.yellow],
    ['kalsi', 'images/suri', '22', Colors.brown],
    ['shurab', 'images/suri', '8', Colors.brown],
    ['pakawet', 'images/suri', '12', Colors.green],
    ['bijama', 'images/suri', '5', Colors.brown],
    ['chama', 'images/suri', '16', Colors.blue],
    ['kofya', 'images/suri', '19', Colors.yellow],
  ];

  var _cartItems = [];

  get getItems => items;
  get getCarts => _cartItems;

  addCarts(index) {
    _cartItems.add(items[index]);
    notifyListeners();
  }

  removeCarts(index) {
    _cartItems.remove(_cartItems[index]);
    notifyListeners();
  }
}
