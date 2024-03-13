import 'package:flutter/material.dart';
import '../../../../../core/utlis/assets.dart';

class FutureListViewItems extends StatelessWidget {
  const FutureListViewItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child: Container(
        margin: const EdgeInsets.only(right: 15,),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.red,
          image: const DecorationImage(
              image: AssetImage(AssetsData.testImage), fit: BoxFit.fill),
        ),
      ),
    );
  }
}
