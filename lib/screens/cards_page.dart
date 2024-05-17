import 'package:flutter/material.dart';

class CardsPage extends StatelessWidget {
  const CardsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(top: 60, left: 22),
          child: const Text(
            "Cards",
            style: TextStyle(
                fontSize: 28, fontWeight: FontWeight.w900, color: Colors.black),
          ),
        )
      ],
    );
  }
}
