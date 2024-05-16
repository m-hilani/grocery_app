import 'package:flutter/material.dart';
import 'package:grocery_app/Cart/CartModel.dart';
import 'package:grocery_app/Explorer/BeveragesScreen.dart';
import 'package:grocery_app/constants.dart';

class Cartcard extends StatefulWidget {
  const Cartcard({super.key, required this.item});
  final CartModel item;

  @override
  State<Cartcard> createState() => _CartcardState();
}

int num = 1;

class _CartcardState extends State<Cartcard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 25),
        decoration: const BoxDecoration(
          border: Border(bottom: BorderSide(color: Color(0xA7E0E0E1))),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset('$kimage/${widget.item.name}.png'),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  widget.item.name,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  widget.item.capacity,
                  style:
                      const TextStyle(fontSize: 14, color: Color(0xFF7C7C7C)),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    MIcon(
                      cart: true,
                      icon: Icons.remove,
                      onPressed: () {
                        setState(() {
                          if (num > 0) num--;
                        });
                      },
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      '$num',
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    MIcon(
                      cart: true,
                      onPressed: () {
                        setState(() {
                          num++;
                        });
                      },
                    )
                  ],
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(onPressed: () {}, icon: const Icon(Icons.clear)),
                const SizedBox(
                  height: 50,
                ),
                Text(
                  '\$${widget.item.price.toStringAsFixed(2)}',
                  style: const TextStyle(
                      fontWeight: FontWeight.w600, fontSize: 18),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
