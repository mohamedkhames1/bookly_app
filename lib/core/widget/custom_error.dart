import 'package:flutter/cupertino.dart';
import 'package:lottie/lottie.dart';

class CustomError extends StatelessWidget {
  const CustomError({super.key, required this.errMessage});
final String errMessage;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Lottie.asset('assets/failed_error.json',height: 100,width: 100),
        Text(errMessage),
      ],
    );
  }
}
