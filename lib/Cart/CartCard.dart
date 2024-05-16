import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/Cart/CartModel.dart';
import 'package:grocery_app/Explorer/BeveragesScreen.dart';
import 'package:grocery_app/constants.dart';

class Cartcard extends StatelessWidget {
  const Cartcard({super.key, required this.item});
  final CartModel item;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 25),
        decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Color(0xA7E0E0E1))),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset('$kimage/${item.name}.png'),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  '${item.name}',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  '${item.capacity}',
                  style: TextStyle(fontSize: 14, color: Color(0xFF7C7C7C)),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    MIcon(
                      cart: true,
                      icon: Icons.remove,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      '1',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    MIcon(
                      cart: true,
                    )
                  ],
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.clear)),
                SizedBox(
                  height: 50,
                ),
                Text(
                  '\$${item.price.toStringAsFixed(2)}',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
