import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:online_shopping/components/item_component.dart';
import 'package:online_shopping/provider/items_provider.dart';
import 'package:provider/provider.dart';

import 'cart_page.dart';
import 'details_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (context) => IconButton(
            icon: Icon(Icons.menu_rounded),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
        title: Text(
          'ቦንዳ ይሸምቱ',
          style: GoogleFonts.cinzel(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: size.height * 0.2,
              child: Text(
                'Almost Everything in a single place',
                style: GoogleFonts.cinzel(
                    fontSize: 35, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 10),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Categories',
                style: TextStyle(fontSize: 20),
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: Consumer<ItemsProvider>(
                builder: (context, value, child) {
                  return GridView.builder(
                    itemCount: value.getItems.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        childAspectRatio: 1 / 1.2,
                        mainAxisSpacing: 13,
                        crossAxisSpacing: 13),
                    itemBuilder: (context, index) {
                      return ItemComponent(
                        color: value.getItems[index][3],
                        image: value.getItems[index][1],
                        price: value.getItems[index][2],
                        title: value.getItems[index][0],
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) =>
                                  DetailsPage(indexCome: index)));
                        },
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
      drawer: Hero(
        transitionOnUserGestures: true,
        tag: 'DemoTag',
        child: Drawer(
          backgroundColor: Colors.blue[100],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.red[100],
          child: Icon(Icons.card_travel),
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => CartPage()));
          }),
    );
  }
}

//  Provider.of<ItemsProvider>(context, listen: false)
//                               .addCarts(index);
