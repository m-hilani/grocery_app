import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/Title.dart';
import 'package:grocery_app/constants.dart';

import 'AddBeverageBottomSheet.dart';
import 'BeverageModel.dart';

class BeveragesScreen extends StatefulWidget {
  const BeveragesScreen({super.key});

  @override
  State<BeveragesScreen> createState() => _BeveragesScreenState();
}

class _BeveragesScreenState extends State<BeveragesScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: Icon(
                    Icons.arrow_back_ios_new_outlined,
                    color: Colors.black,
                  ),
                ),
                MTitle(title: 'Beverages'),
                MIcon(
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      // isScrollControlled: true,
                      builder: (context) => AddBeverageBottomSheet(),
                    );
                  },
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Expanded(
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisSpacing: 15,
                      mainAxisSpacing: 15,
                      mainAxisExtent: 250,
                      crossAxisCount: 2),
                  itemCount: beverages.length,
                  itemBuilder: (BuildContext ctx, index) {
                    return BeverageCard(beverage: beverages[index]);
                  }),
            ),
          ],
        ),
      ),
    ));
  }
}

class BeverageCard extends StatelessWidget {
  const BeverageCard({super.key, required this.beverage});

  final BeverageModel beverage;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
          border: Border.all(
            color: Color(0xFFE2E2E2),
          ),
          borderRadius: BorderRadius.circular(18)),
      child: Stack(
        children: [
          Positioned(
            bottom: 5,
            right: 5,
            child: MIcon(),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Center(
                  child: Image.asset(
                    '$kimage/${beverage.name}.png',
                    width: 45,
                    height: 90,
                  ),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(vertical: 0),
                  child: Text(
                    beverage.name,
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  )),
              Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Text(
                    beverage.capacity,
                    style: TextStyle(fontSize: 14, color: Color(0xFF7C7C7C)),
                  )),
              Padding(
                  padding: const EdgeInsets.symmetric(vertical: 0),
                  child: Text(
                    '\$${beverage.price.toStringAsFixed(2)}',
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  )),
            ],
          ),
        ],
      ),
    );
  }
}

class MIcon extends StatelessWidget {
  MIcon({super.key, this.onPressed, this.cart = false, this.icon = Icons.add});
  void Function()? onPressed;
  bool cart;
  IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: cart ? Border.all(color: Color(0xA7E0E0E1)) : null,
          color: cart ? Colors.white : kprimaryColor,
          borderRadius: BorderRadius.circular(17)),
      child: IconButton(
          onPressed: onPressed,
          icon: Icon(
            color: cart ? kprimaryColor : Colors.white,
            icon,
            // color: Colors.green,
          )),
    );
  }
}
