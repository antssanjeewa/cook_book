import 'package:cook_book/utils/constants/colors.dart';
import 'package:cook_book/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class RoundedContainer extends StatelessWidget {
  const RoundedContainer({
    Key? key,
    required this.child,
    this.color = TColors.darkerGrey,
    this.margin = 0,
  }) : super(key: key);

  final Widget child;

  final Color? color;
  final double margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(TSizes.md),
      ),
      padding: EdgeInsets.all(TSizes.md),
      margin: EdgeInsets.all(margin),
      child: child,
    );
  }
}
