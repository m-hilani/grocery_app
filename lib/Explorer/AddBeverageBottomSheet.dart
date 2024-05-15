import 'package:flutter/cupertino.dart';

class AddBeverageBottomSheet extends StatefulWidget {
  const AddBeverageBottomSheet({super.key});

  @override
  State<AddBeverageBottomSheet> createState() => _AddBeverageBottomSheetState();
}

class _AddBeverageBottomSheetState extends State<AddBeverageBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 30, horizontal: 25),
      decoration: BoxDecoration(
          color: Color(0xFFF2F3F2),
          borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "Add",
                style: TextStyle(color: CupertinoColors.black, fontSize: 24),
              )
            ],
          )
        ],
      ),
    );
  }
}
