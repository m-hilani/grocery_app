import 'package:flutter/material.dart';
import 'package:grocery_app/Cart/CartCard.dart';
import 'package:grocery_app/Cart/OrderBottomSheet.dart';
import 'package:grocery_app/Title.dart';

import 'CartModel.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 40.0),
              child: MTitle(title: 'My Cart'),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 0.0),
              child: Divider(),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: cart.length,
                itemBuilder: (BuildContext context, int index) {
                  return Cartcard(item: cart[index]);
                },
              ),
            ),
            const Divider()
          ],
        ),
        Positioned(
          bottom: 30,
          right: 25,
          child: ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                    context: context, builder: (context) => const OrderBottomSheet());
              },
              child: const Text('Go to Checkout')),
        )
      ]),
    );
  }
}
