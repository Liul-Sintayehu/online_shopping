import 'package:flutter/material.dart';

class ItemsProvider extends ChangeNotifier {
  final List _items = [
    ['ሱሪ', 'images/suri.jpg', '12', const Color.fromARGB(255, 78, 73, 73)],
    ['ቀሚስ', 'images/kemis.jpg', '16', Colors.red],
    ['ቲሸርት', 'images/tshirt.jpg', '9', Colors.blue],
    ['ካልሲ', 'images/calsi.jpg', '22', Colors.purple],
    ['ሹራብ', 'images/shurab.jpg', '8', Colors.brown],
    ['ጃኬት', 'images/jacket.jpg', '12', Color.fromARGB(255, 78, 73, 73)],
    ['ቢጃማ', 'images/bijama.png', '5', Colors.orange],
    ['ጫማ', 'images/shoes.jpg', '16', Colors.blue],
    ['ኮፍያ', 'images/kofya.jpg', '19', Color.fromARGB(255, 78, 73, 73)],
  ];

  final List products = [
    [
      Item('0', 'ሱሪ', 'images/suri/s1.jpg', '12', Colors.black),
      Item('1', 'ሱሪ', 'images/suri/s2.jpg', '12', Colors.black),
      Item('2', 'ሱሪ', 'images/suri/s3.jpg', '12', Colors.black),
      Item('3', 'ሱሪ', 'images/suri/s4.jpg', '12', Colors.black),
      Item('4', 'ሱሪ', 'images/suri/s5.jpg', '12', Colors.black),
      Item('5', 'ሱሪ', 'images/suri/s6.jpg', '12', Colors.black),
      Item('6', 'ሱሪ', 'images/suri/s7.jpg', '12', Colors.black),
      Item('7', 'ሱሪ', 'images/suri/s8.jpg', '12', Colors.black),
    ],
    [
      Item('0', 'ሱሪ', 'images/suri/s1.jpg', '12', Colors.black),
      Item('1', 'ሱሪ', 'images/suri/s2.jpg', '12', Colors.black),
      Item('2', 'ሱሪ', 'images/suri/s3.jpg', '12', Colors.black),
      Item('3', 'ሱሪ', 'images/suri/s4.jpg', '12', Colors.black),
      Item('4', 'ሱሪ', 'images/suri/s5.jpg', '12', Colors.black),
      Item('5', 'ሱሪ', 'images/suri/s6.jpg', '12', Colors.black),
      Item('6', 'ሱሪ', 'images/suri/s7.jpg', '12', Colors.black),
      Item('7', 'ሱሪ', 'images/suri/s8.jpg', '12', Colors.black),
    ],
    [
      Item('0', 'ሱሪ', 'images/suri/s1.jpg', '12', Colors.black),
      Item('1', 'ሱሪ', 'images/suri/s2.jpg', '12', Colors.black),
      Item('2', 'ሱሪ', 'images/suri/s3.jpg', '12', Colors.black),
      Item('3', 'ሱሪ', 'images/suri/s4.jpg', '12', Colors.black),
      Item('4', 'ሱሪ', 'images/suri/s5.jpg', '12', Colors.black),
      Item('5', 'ሱሪ', 'images/suri/s6.jpg', '12', Colors.black),
      Item('6', 'ሱሪ', 'images/suri/s7.jpg', '12', Colors.black),
      Item('7', 'ሱሪ', 'images/suri/s8.jpg', '12', Colors.black),
    ],
    [
      Item('0', 'ሱሪ', 'images/suri/s1.jpg', '12', Colors.black),
      Item('1', 'ሱሪ', 'images/suri/s2.jpg', '12', Colors.black),
      Item('2', 'ሱሪ', 'images/suri/s3.jpg', '12', Colors.black),
      Item('3', 'ሱሪ', 'images/suri/s4.jpg', '12', Colors.black),
      Item('4', 'ሱሪ', 'images/suri/s5.jpg', '12', Colors.black),
      Item('5', 'ሱሪ', 'images/suri/s6.jpg', '12', Colors.black),
      Item('6', 'ሱሪ', 'images/suri/s7.jpg', '12', Colors.black),
      Item('7', 'ሱሪ', 'images/suri/s8.jpg', '12', Colors.black),
    ],
    [
      Item('0', 'ሱሪ', 'images/suri/s1.jpg', '12', Colors.black),
      Item('1', 'ሱሪ', 'images/suri/s2.jpg', '12', Colors.black),
      Item('2', 'ሱሪ', 'images/suri/s3.jpg', '12', Colors.black),
      Item('3', 'ሱሪ', 'images/suri/s4.jpg', '12', Colors.black),
      Item('4', 'ሱሪ', 'images/suri/s5.jpg', '12', Colors.black),
      Item('5', 'ሱሪ', 'images/suri/s6.jpg', '12', Colors.black),
      Item('6', 'ሱሪ', 'images/suri/s7.jpg', '12', Colors.black),
      Item('7', 'ሱሪ', 'images/suri/s8.jpg', '12', Colors.black),
    ],
    [
      Item('0', 'ሱሪ', 'images/suri/s1.jpg', '12', Colors.black),
      Item('1', 'ሱሪ', 'images/suri/s2.jpg', '12', Colors.black),
      Item('2', 'ሱሪ', 'images/suri/s3.jpg', '12', Colors.black),
      Item('3', 'ሱሪ', 'images/suri/s4.jpg', '12', Colors.black),
      Item('4', 'ሱሪ', 'images/suri/s5.jpg', '12', Colors.black),
      Item('5', 'ሱሪ', 'images/suri/s6.jpg', '12', Colors.black),
      Item('6', 'ሱሪ', 'images/suri/s7.jpg', '12', Colors.black),
      Item('7', 'ሱሪ', 'images/suri/s8.jpg', '12', Colors.black),
    ],
    [
      Item('0', 'ሱሪ', 'images/suri/s1.jpg', '12', Colors.black),
      Item('1', 'ሱሪ', 'images/suri/s2.jpg', '12', Colors.black),
      Item('2', 'ሱሪ', 'images/suri/s3.jpg', '12', Colors.black),
      Item('3', 'ሱሪ', 'images/suri/s4.jpg', '12', Colors.black),
      Item('4', 'ሱሪ', 'images/suri/s5.jpg', '12', Colors.black),
      Item('5', 'ሱሪ', 'images/suri/s6.jpg', '12', Colors.black),
      Item('6', 'ሱሪ', 'images/suri/s7.jpg', '12', Colors.black),
      Item('7', 'ሱሪ', 'images/suri/s8.jpg', '12', Colors.black),
    ],
    [
      Item('0', 'ሱሪ', 'images/suri/s1.jpg', '12', Colors.black),
      Item('1', 'ሱሪ', 'images/suri/s2.jpg', '12', Colors.black),
      Item('2', 'ሱሪ', 'images/suri/s3.jpg', '12', Colors.black),
      Item('3', 'ሱሪ', 'images/suri/s4.jpg', '12', Colors.black),
      Item('4', 'ሱሪ', 'images/suri/s5.jpg', '12', Colors.black),
      Item('5', 'ሱሪ', 'images/suri/s6.jpg', '12', Colors.black),
      Item('6', 'ሱሪ', 'images/suri/s7.jpg', '12', Colors.black),
      Item('7', 'ሱሪ', 'images/suri/s8.jpg', '12', Colors.black),
    ],
    [
      Item('0', 'ሱሪ', 'images/suri/s1.jpg', '12', Colors.black),
      Item('1', 'ሱሪ', 'images/suri/s2.jpg', '12', Colors.black),
      Item('2', 'ሱሪ', 'images/suri/s3.jpg', '12', Colors.black),
      Item('3', 'ሱሪ', 'images/suri/s4.jpg', '12', Colors.black),
      Item('4', 'ሱሪ', 'images/suri/s5.jpg', '12', Colors.black),
      Item('5', 'ሱሪ', 'images/suri/s6.jpg', '12', Colors.black),
      Item('6', 'ሱሪ', 'images/suri/s7.jpg', '12', Colors.black),
      Item('7', 'ሱሪ', 'images/suri/s8.jpg', '12', Colors.black),
    ],
  ];

  var _cartItems = [];

  get getItems => _items;
  get getCarts => _cartItems;
  get getProducts => products;

  addSuri(index) {
    _cartItems.add(products[0][index]);
    notifyListeners();
  }

  removeCarts(index) {
    _cartItems.remove(_cartItems[index]);
    notifyListeners();
  }
}

class Item {
  final String id;
  final title;
  final String image;
  final String price;
  final color;

  Item(this.id, this.title, this.image, this.price, this.color);
}
