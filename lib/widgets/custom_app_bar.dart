import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../utils/utils.dart';

Widget buildCustomAppBarWidget(String title) {
 

  return Container(
    margin: EdgeInsets.only(
        top: isIOS
            ? 60
            : isAndroid
                ? 40
                : 20,
        left: 30),
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
