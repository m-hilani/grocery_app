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
          const Expanded(child: SizedBox()),
          Image.asset('$kimage/accept.png'),
          const Expanded(child: SizedBox()),
          const Text(
            textAlign: TextAlign.center,
            'Your Order has been accepted',
            style: TextStyle(fontSize: 28),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Your items has been placcd and is on \nit’s way to being processed',
            style: TextStyle(fontSize: 16, color: Color(0xFF7C7C7C)),
          ),
          const Expanded(child: SizedBox()),
          ElevatedButton(
              onPressed: () => {Navigator.pop(context)},
              child: const Text('Track Order')),
          const SizedBox(
            height: 10,
          ),
          TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text(
                'Back to home',
                style: TextStyle(fontSize: 18),
              )),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
