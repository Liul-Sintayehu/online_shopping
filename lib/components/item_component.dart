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
    final size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.blue.shade100),
          borderRadius: BorderRadius.circular(15)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Image.asset(
              image,
            ),
          ),
          Text(title),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 25,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: color,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                ),
                onPressed: onPressed,
                child: Text(
                  'Visit',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
