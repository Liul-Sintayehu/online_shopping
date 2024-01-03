import 'package:flutter/material.dart';
import 'package:online_shopping/components/product_component.dart';
import 'package:online_shopping/provider/items_provider.dart';
import 'package:provider/provider.dart';

import 'cart_page.dart';

class DetailsPage extends StatelessWidget {
  final indexCome;
  const DetailsPage({required this.indexCome, super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ItemsProvider>(
      builder: (context, value, child) {
        return Scaffold(
          appBar: AppBar(
            title: Text(
              value.getItems[indexCome][0],
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            centerTitle: true,
            backgroundColor: value.getItems[indexCome][3],
            iconTheme: IconThemeData(color: Colors.white),
          ),
          body: Container(
            child: Column(
              children: [
                SizedBox(height: 20),
                Expanded(
                  child: GridView.builder(
                      itemCount: value.getProducts[indexCome].length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 15,
                          crossAxisSpacing: 15,
                          childAspectRatio: 1 / 1.2),
                      itemBuilder: (context, index) {
                        return ProductComponent(
                          image: value.getProducts[indexCome][index].image,
                          price: value.getProducts[indexCome][index].price,
                          color: value.getProducts[indexCome][index].color,
                          onPressed: () {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text('item added'),
                                duration: Duration(milliseconds: 500),
                              ),
                            );
                            Provider.of<ItemsProvider>(context, listen: false)
                                .addSuri(index);
                          },
                        );
                      }),
                )
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
              backgroundColor: value.getItems[indexCome][3],
              child: Icon(Icons.card_travel),
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => CartPage()));
              }),
        );
      },
    );
  }
}
