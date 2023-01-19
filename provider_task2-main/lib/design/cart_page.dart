import 'package:flutter/material.dart';
import 'package:groceries_favorites_provider/provider/provider_class.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final object = Provider.of<ProviderPage>(context);
    List store = object.favoriteCart;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Your Cart',
          style: TextStyle(fontWeight: FontWeight.w900, color: Colors.white),
        ),
      ),
      body: ListView.builder(
          itemCount: store.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(
                store[index],
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            );
          }),
    );
  }
}
