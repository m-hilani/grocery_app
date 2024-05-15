import 'package:flutter/cupertino.dart';

class MTitle extends StatelessWidget {
  const MTitle({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        title,
        style: const TextStyle(
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
          fontSize: 20,
          height: 0.9,
          color: Color(0xFF181725),
        ),
      ),
    );
  }
}
