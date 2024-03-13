
import 'package:flutter/material.dart';


class slideranimation extends StatelessWidget {
  const slideranimation({
    super.key,
    required this.slidingAnimation,
  });

  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: slidingAnimation,
      builder: (context, _) {
        return SlideTransition(
          position: slidingAnimation,
          child: const Text(
            'Read Free Book',
            textAlign: TextAlign.center,
          ),
        );
      },
    );
  }
}