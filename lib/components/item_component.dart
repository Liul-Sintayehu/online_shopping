import 'package:flutter/material.dart';

class ItemComponent extends StatelessWidget {
  final color;
  final String image;
  final String title;
  final String price;
  final Function() onPressed;
  const ItemComponent(
      {super.key,
      required this.color,
      required this.image,
      required this.title,
      required this.onPressed,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: color[100], borderRadius: BorderRadius.circular(15)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // Image.asset(
          //   'images/suri.jpg',
          //   height: 35,
          // )
          Icon(Icons.apple),
          Text(title),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: color,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
            ),
            onPressed: onPressed,
            child: Text(
              '\$ $price',
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
