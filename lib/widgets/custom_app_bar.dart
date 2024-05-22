import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Widget buildCustomAppBarWidget(String title) {
  return Container(
    margin: const EdgeInsets.only(top: 60, left: 30),
    child: Row(
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    ),
  );
}
