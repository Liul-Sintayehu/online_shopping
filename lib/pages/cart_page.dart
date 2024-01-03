import 'package:flutter/material.dart';
import 'package:online_shopping/provider/items_provider.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Consumer<ItemsProvider>(
      builder: (context, value, child) {
        return Column(
          children: [
            Expanded(
              child: ListView.builder(
                  itemCount: value.getCarts.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: Icon(Icons.apple),
                      title: Text(value.getCarts[index][0]),
                      subtitle: Text('\$' + value.getCarts[index][2]),
                      trailing: IconButton(
                          onPressed: () {
                            Provider.of<ItemsProvider>(context, listen: false)
                                .removeCarts(index);
                          },
                          icon: Icon(Icons.cancel)),
                    );
                  }),
            )
          ],
        );
      },
    ));
  }
}
