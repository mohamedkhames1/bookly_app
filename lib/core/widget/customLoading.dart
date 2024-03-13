import 'package:flutter/cupertino.dart';
import 'package:lottie/lottie.dart';

class CustomLoading extends StatelessWidget {
  const CustomLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Lottie.asset('assets/Animation - 1709027239256.json',height: 100,width: 100),
    );
  }
}
