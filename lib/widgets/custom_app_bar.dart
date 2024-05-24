import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Widget buildCustomAppBarWidget(String title) {
  final isIOS = !kIsWeb && defaultTargetPlatform == TargetPlatform.iOS;
  final isAndroid = !kIsWeb && defaultTargetPlatform == TargetPlatform.android;

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
