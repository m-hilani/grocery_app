import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/constants.dart';

class Acceptedscreen extends StatelessWidget {
  const Acceptedscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(child: SizedBox()),
          Image.asset('$kimage/accept.png'),
          Expanded(child: SizedBox()),
          Text(
            textAlign: TextAlign.center,
            'Your Order has been accepted',
            style: TextStyle(fontSize: 28),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Your items has been placcd and is on \nit’s way to being processed',
            style: TextStyle(fontSize: 16, color: Color(0xFF7C7C7C)),
          ),
          Expanded(child: SizedBox()),
          ElevatedButton(
              onPressed: () => {Navigator.pop(context)},
              child: Text('Track Order')),
          SizedBox(
            height: 10,
          ),
          TextButton(
              onPressed: () {},
              child: Text(
                'Back to home',
                style: TextStyle(fontSize: 18),
              )),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
