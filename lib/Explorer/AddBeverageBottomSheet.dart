import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/constants.dart';

class AddBeverageBottomSheet extends StatefulWidget {
  const AddBeverageBottomSheet({super.key});

  @override
  State<AddBeverageBottomSheet> createState() => _AddBeverageBottomSheetState();
}

class _AddBeverageBottomSheetState extends State<AddBeverageBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
      decoration: const BoxDecoration(
          color: Color(0xFFF2F3F2),
          borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Add",
              style: TextStyle(color: CupertinoColors.black, fontSize: 24),
            ),
          ),
          const Divider(
            color: Colors.black,
          ),
          Expanded(child: Image.asset('$kimage/addBeverage.png')),
          ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                    context: context, builder: (context) => Container());
              },
              child: const Text('Add Item'))
        ],
      ),
    );
  }
}
