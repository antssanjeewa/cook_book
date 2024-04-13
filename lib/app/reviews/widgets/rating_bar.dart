import 'package:capped_progress_indicator/capped_progress_indicator.dart';
import 'package:cook_book/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class RatingProgressBar extends StatelessWidget {
  const RatingProgressBar({
    Key? key,
    required this.title,
    required this.value,
  }) : super(key: key);

  final String title;
  final double value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(flex: 1, child: Text(title)),
        Expanded(
            flex: 11,
            child: LinearCappedProgressIndicator(
              value: value,
              minHeight: 10,
              valueColor: const AlwaysStoppedAnimation(TColors.primary),
            )),
      ],
    );
  }
}
