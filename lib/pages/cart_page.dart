// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:online_shopping/provider/items_provider.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;

class CartPage extends StatelessWidget {
  CartPage({super.key});

  // sendOrder() async {
  //   final uri =
  //       Uri.parse('https://restorant-backend-i0ix.onrender.com/addorder');
  //   var response = await http.post(
  //     uri,
  //     body: {
  //       "title": widget.title,
  //       "price": widget.price,
  //       "amount": order.toString(),
  //       "table": _table.text
  //     },
  //   );
  //   print(response);
  // }
  var phone = TextEditingController();
  var address = TextEditingController();
  double price = 0.0;

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
                                        TextField(
                                          controller: phone,
                                          decoration: InputDecoration(
                                            border: OutlineInputBorder(),
                                            labelText: 'Enter phone number',
                                          ),
                                        ),
                                        SizedBox(height: 15),
                                        TextField(
                                          controller: address,
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
                                                  onPressed: () async {
                                                    //api

                                                    final uri = Uri.parse(
                                                        'https://shopping-backend-njou.onrender.com/addorder');
                                                    var response =
                                                        await http.post(
                                                      uri,
                                                      body: {
                                                        "phone": phone.text,
                                                        "address": address.text,
                                                        "items": value.getCarts
                                                            .toString(),
                                                        "price":
                                                            price.toString()
                                                      },
                                                    );
                                                    showDialog(
                                                        context: context,
                                                        builder: (context) {
                                                          return AlertDialog(
                                                            title: Text(
                                                                'Ordered successfully!!!'),
                                                            actions: [
                                                              TextButton(
                                                                  onPressed:
                                                                      () {
                                                                    Navigator.of(
                                                                            context)
                                                                        .pop();
                                                                  },
                                                                  child: Text(
                                                                      'Ok'))
                                                            ],
                                                          );
                                                        });
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
