import 'package:booklyapp/core/utlis/styles.dart';
import 'package:flutter/material.dart';

class CustomButtun extends StatelessWidget {
  const CustomButtun(
      {super.key,
      required this.background,
      required this.textcolor,
      required this.text,
      required this.borderRadius});

  final Color background;
  final Color textcolor;
  final String text;
  final BorderRadius borderRadius;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      child: TextButton(
        style: TextButton.styleFrom(
            backgroundColor: background,
            shape: RoundedRectangleBorder(borderRadius: borderRadius)),
        onPressed: () {},
        child: Text(
          text,
          style: Styles.textStyle20.copyWith(color: textcolor),
        ),
      ),
    );
  }
}
