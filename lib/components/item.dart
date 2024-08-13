import 'package:flutter/material.dart';

class Item extends StatelessWidget {
  final String title;
  final String caption;
  const Item({super.key, required this.title, required this.caption});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            caption,
            style: const TextStyle(
              fontSize: 14,
              color: Color.fromRGBO(142, 142, 166, 1),
              letterSpacing: 1,
            ),
          ),
        ],
      ),
    );
  }
}
