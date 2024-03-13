import 'package:flutter/material.dart';
import '../../../../../../core/widget/custombuttun.dart';

class BookAction extends StatelessWidget {
  const BookAction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomButtun(
            background: Colors.white,
            textcolor: Colors.black,
            text: '19.99€',
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16), bottomLeft: Radius.circular(16)),
          ),
        ),
        Expanded(
          child: CustomButtun(
            background: Color(0xffEF8262),
            textcolor: Colors.white,
            text: 'Free preview',
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(16), bottomRight: Radius.circular(16)),
          ),
        ),
      ],
    );
  }
}
