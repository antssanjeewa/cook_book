import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class TAnimationLoader extends StatelessWidget {
  const TAnimationLoader({super.key, required this.animation});

  final String animation;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Lottie.asset(animation, width: double.infinity),
    );
  }
}
