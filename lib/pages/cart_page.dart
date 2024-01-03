import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:online_shopping/provider/items_provider.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Carts'),
          centerTitle: true,
        ),
        backgroundColor: Colors.white,
        body: Consumer<ItemsProvider>(
          builder: (context, value, child) {
            double price = 0.0;
            for (int i = 0; i < value.getCarts.length; i++) {
              price += double.parse(value.getCarts[i].price);
            }
            return Column(
              children: [
                Expanded(
                  child: ListView.builder(
                      itemCount: value.getCarts.length,
                      itemBuilder: (context, index) {
                        return Container(
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(),
                              ]),
                          padding: EdgeInsets.all(8),
                          margin:
                              EdgeInsets.symmetric(vertical: 5, horizontal: 16),
                          child: ListTile(
                            leading: CircleAvatar(
                                child: Image.asset(
                              value.getCarts[index].image,
                              fit: BoxFit.contain,
                            )),
                            title: Text(value.getCarts[index].title),
                            subtitle: Text('\$' + value.getCarts[index].price),
                            trailing: IconButton(
                                onPressed: () {
                                  Provider.of<ItemsProvider>(context,
                                          listen: false)
                                      .removeCarts(index);
                                },
                                icon: Icon(Icons.cancel)),
                          ),
                        );
                      }),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            showBottomSheet(
                                context: context,
                                builder: (context) {
                                  return Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.5,
                                    padding: EdgeInsets.all(16),
                                    margin: EdgeInsets.all(8),
                                    child: Column(
                                      children: [
                                        Text('Enter informations'),
                                        SizedBox(height: 15),
                                        const TextField(
                                          decoration: InputDecoration(
                                            border: OutlineInputBorder(),
                                            labelText: 'Enter phone number',
                                          ),
                                        ),
                                        SizedBox(height: 15),
                                        const TextField(
                                          decoration: InputDecoration(
                                            border: OutlineInputBorder(),
                                            labelText: 'Enter Address',
                                          ),
                                        ),
                                        const Spacer(),
                                        Row(
                                          children: [
                                            Expanded(
                                              child: ElevatedButton(
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                          backgroundColor: Colors
                                                              .green[200],
                                                          padding:
                                                              const EdgeInsets
                                                                  .symmetric(
                                                                  vertical:
                                                                      15)),
                                                  onPressed: () {
                                                    print(
                                                        'sending $price to apis');
                                                  },
                                                  child: Text(
                                                    'Order',
                                                    style: GoogleFonts.cinzel(
                                                        fontSize: 30,
                                                        color: Colors.white),
                                                  )),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  );
                                });
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.green[300],
                              padding: EdgeInsets.all(8)),
                          child: Text(
                            'Pay : $price',
                            style: GoogleFonts.cinzel(
                                fontSize: 28, color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            );
          },
        ));
  }
}
