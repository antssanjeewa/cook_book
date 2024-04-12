import 'package:cook_book/app/home/widgets/custom_curve.dart';
import 'package:cook_book/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class CurvedBackground extends StatelessWidget {
  const CurvedBackground({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CustomCurvedEdged(),
      child: Container(
        color: TColors.primary,
        child: Stack(
          children: [
            const Positioned(top: -150, right: -250, child: BackgroundCircle()),
            const Positioned(top: 100, right: -300, child: BackgroundCircle()),
            child,
          ],
        ),
      ),
    );
  }
}

class BackgroundCircle extends StatelessWidget {
  const BackgroundCircle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 400,
      padding: const EdgeInsets.all(0),
      decoration: BoxDecoration(
        color: TColors.textWhite.withOpacity(0.1),
        borderRadius: BorderRadius.circular(400),
      ),
    );
  }
}
