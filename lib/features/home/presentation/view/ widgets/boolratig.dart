import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utlis/styles.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(FontAwesomeIcons.solidStar,color: Color(0xffFFDD4F),size: 18,),
        const SizedBox(width: 6.3,),
        Text('4.5',style: Styles.textStyle16,),
        const SizedBox(width: 5,),
        Opacity(opacity: .5,
        child: Text('(4583)',style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w600),)),
      ],
    );
  }
}

