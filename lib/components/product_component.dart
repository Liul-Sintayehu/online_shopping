import 'package:flutter/material.dart';

class ProductComponent extends StatelessWidget {
  final String image;
  final String price;
  final color;
  final Function() onPressed;
  const ProductComponent(
      {super.key,
      required this.image,
      required this.price,
      this.color,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.blue.shade100,
          ),
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: [
          Expanded(
            child: Image.asset(
              image,
            ),
          ),
          SizedBox(height: 5),
          Text('price : \$' + price),
          SizedBox(height: 5),
          ElevatedButton(onPressed: onPressed, child: Text('Add cart')),
          SizedBox(height: 5),
        ],
      ),
    );
  }
}
