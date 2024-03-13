import 'package:booklyapp/const.dart';
import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 18, top: 44, bottom: 44),
      child: Row(
        children: [
          Image.asset(
            klogo,
            height: 20,
            width: 75,
          ),
          const Spacer(),
          GestureDetector(
            onTap: () {},
            child: Image.asset(ksearch),
          )
        ],
      ),
    );
  }
}
