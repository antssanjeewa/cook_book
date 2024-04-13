import 'package:flutter/material.dart';

import 'rating_bar.dart';

class RatingSummary extends StatelessWidget {
  const RatingSummary({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            flex: 1,
            child: Column(
              children: [
                Text("3.5", style: Theme.of(context).textTheme.displayLarge),
                Text("(128)", style: Theme.of(context).textTheme.labelMedium),
              ],
            )),

        //
        Expanded(
          flex: 2,
          child: Column(
            children: const [
              RatingProgressBar(title: "5", value: 0.5),
              RatingProgressBar(title: "4", value: 0.8),
              RatingProgressBar(title: "3", value: 0.2),
              RatingProgressBar(title: "2", value: 0.1),
              RatingProgressBar(title: "1", value: 0.6),
            ],
          ),
        ),
      ],
    );
  }
}
