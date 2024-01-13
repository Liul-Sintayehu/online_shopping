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
      Item('0', 'ሱሪ', 'images/suri/s1.jpg', '350', Colors.black),
      Item('1', 'ሱሪ', 'images/suri/s2.jpg', '350', Colors.black),
      Item('2', 'ሱሪ', 'images/suri/s3.jpg', '350', Colors.black),
      Item('3', 'ሱሪ', 'images/suri/s4.jpg', '350', Colors.black),
      Item('4', 'ሱሪ', 'images/suri/s5.jpg', '350', Colors.black),
      Item('5', 'ሱሪ', 'images/suri/s6.jpg', '350', Colors.black),
      Item('6', 'ሱሪ', 'images/suri/s7.jpg', '350', Colors.black),
      Item('7', 'ሱሪ', 'images/suri/s8.jpg', '350', Colors.black),
    ],
    [
      Item('10', 'ቀሚስ', 'images/kemis/k1.jpg', '300', Colors.black),
      Item('11', 'ቀሚስ', 'images/kemis/k2.jpg', '300', Colors.black),
      Item('12', 'ቀሚስ', 'images/kemis/k3.jpg', '300', Colors.black),
      Item('13', 'ቀሚስ', 'images/kemis/k4.jpg', '300', Colors.black),
      Item('14', 'ቀሚስ', 'images/kemis/k5.jpg', '300', Colors.black),
      Item('15', 'ቀሚስ', 'images/kemis/k6.jpg', '300', Colors.black),
      Item('16', 'ቀሚስ', 'images/kemis/k7.jpg', '300', Colors.black),
      Item('17', 'ቀሚስ', 'images/kemis/k8.jpg', '300', Colors.black),
    ],
    [
      Item('20', 'ቲሸርት', 'images/tshirt/t1.jpg', '250', Colors.black),
      Item('21', 'ቲሸርት', 'images/tshirt/t2.jpg', '250', Colors.black),
      Item('22', 'ቲሸርት', 'images/tshirt/t3.jpg', '250', Colors.black),
      Item('23', 'ቲሸርት', 'images/tshirt/t4.jpg', '250', Colors.black),
      Item('24', 'ቲሸርት', 'images/tshirt/t5.jpg', '250', Colors.black),
      Item('25', 'ቲሸርት', 'images/tshirt/t6.jpg', '250', Colors.black),
      Item('26', 'ቲሸርት', 'images/tshirt/t7.jpg', '250', Colors.black),
      Item('27', 'ቲሸርት', 'images/tshirt/t8.jpg', '250', Colors.black),
    ],
    [
      Item('30', 'ካልሲ', 'images/calsi/c1.jpg', '50', Colors.black),
      Item('31', 'ካልሲ', 'images/calsi/c2.jpg', '50', Colors.black),
      Item('32', 'ካልሲ', 'images/calsi/c3.jpg', '50', Colors.black),
      Item('33', 'ካልሲ', 'images/calsi/c4.jpg', '50', Colors.black),
      Item('34', 'ካልሲ', 'images/calsi/c5.jpg', '50', Colors.black),
      Item('35', 'ካልሲ', 'images/calsi/c6.jpg', '50', Colors.black),
      Item('36', 'ካልሲ', 'images/calsi/c7.jpg', '50', Colors.black),
      Item('37', 'ካልሲ', 'images/calsi/c8.jpg', '50', Colors.black),
    ],
    [
      Item('40', 'ሹራብ', 'images/shurab/s1.jpg', '12', Colors.black),
      Item('41', 'ሹራብ', 'images/shurab/s2.jpg', '12', Colors.black),
      Item('42', 'ሹራብ', 'images/shurab/s3.jpg', '12', Colors.black),
      Item('43', 'ሹራብ', 'images/shurab/s4.jpg', '12', Colors.black),
      Item('44', 'ሹራብ', 'images/shurab/s5.jpg', '12', Colors.black),
      Item('45', 'ሹራብ', 'images/shurab/s6.jpg', '12', Colors.black),
      Item('46', 'ሹራብ', 'images/shurab/s7.jpg', '12', Colors.black),
      Item('47', 'ሹራብ', 'images/shurab/s8.jpg', '12', Colors.black),
    ],
    [
      Item('50', 'ጃኬት', 'images/jaket/j1.jpg', '400', Colors.black),
      Item('51', 'ጃኬት', 'images/jaket/j2.jpg', '400', Colors.black),
      Item('52', 'ጃኬት', 'images/jaket/j3.jpg', '400', Colors.black),
      Item('53', 'ጃኬት', 'images/jaket/j4.jpg', '400', Colors.black),
      Item('54', 'ጃኬት', 'images/jaket/j5.jpg', '400', Colors.black),
      Item('55', 'ጃኬት', 'images/jaket/j6.jpg', '400', Colors.black),
      Item('56', 'ጃኬት', 'images/jaket/j7.jpg', '400', Colors.black),
      Item('57', 'ጃኬት', 'images/jaket/j8.jpg', '400', Colors.black),
    ],
    [
      Item('60', 'ቢጃማ', 'images/bijama/b1.jpg', '200', Colors.black),
      Item('61', 'ቢጃማ', 'images/bijama/b2.jpg', '200', Colors.black),
      Item('62', 'ቢጃማ', 'images/bijama/b3.jpg', '200', Colors.black),
      Item('63', 'ቢጃማ', 'images/bijama/b4.jpg', '200', Colors.black),
      Item('64', 'ቢጃማ', 'images/bijama/b5.jpg', '200', Colors.black),
      Item('65', 'ቢጃማ', 'images/bijama/b6.jpg', '200', Colors.black),
      Item('66', 'ቢጃማ', 'images/bijama/b7.jpg', '200', Colors.black),
      Item('67', 'ቢጃማ', 'images/bijama/b8.jpg', '200', Colors.black),
    ],
    [
      Item('70', 'ጫማ', 'images/chama/c1.jpg', '500', Colors.black),
      Item('71', 'ጫማ', 'images/chama/c2.jpg', '500', Colors.black),
      Item('72', 'ጫማ', 'images/chama/c3.jpg', '500', Colors.black),
      Item('73', 'ጫማ', 'images/chama/c4.jpg', '500', Colors.black),
      Item('74', 'ጫማ', 'images/chama/c5.jpg', '500', Colors.black),
      Item('75', 'ጫማ', 'images/chama/c6.jpg', '500', Colors.black),
      Item('76', 'ጫማ', 'images/chama/c7.jpg', '500', Colors.black),
      Item('77', 'ጫማ', 'images/chama/c8.jpg', '500', Colors.black),
    ],
    [
      Item('80', 'ኮፍያ', 'images/kofya/k1.jpg', '80', Colors.black),
      Item('81', 'ኮፍያ', 'images/kofya/k2.jpg', '80', Colors.black),
      Item('82', 'ኮፍያ', 'images/kofya/k3.jpg', '80', Colors.black),
      Item('83', 'ኮፍያ', 'images/kofya/k4.jpg', '80', Colors.black),
      Item('84', 'ኮፍያ', 'images/kofya/k5.jpg', '80', Colors.black),
      Item('85', 'ኮፍያ', 'images/kofya/k6.jpg', '80', Colors.black),
      Item('86', 'ኮፍያ', 'images/kofya/k7.jpg', '80', Colors.black),
      Item('87', 'ኮፍያ', 'images/kofya/k8.jpg', '80', Colors.black),
    ],
  ];

  var _cartItems = [];

  get getItems => _items;
  get getCarts => _cartItems;
  get getProducts => products;

  addCart(index, income) {
    _cartItems.add(products[income][index]);
    notifyListeners();
  }

  addKemis(index) {
    _cartItems.add(products[1][index]);
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
  @override
  String toString() {
    // TODO: implement toString
    return id;
  }
}
