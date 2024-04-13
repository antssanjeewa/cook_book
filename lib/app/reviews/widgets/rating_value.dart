import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RatingStarts extends StatelessWidget {
  const RatingStarts({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RatingBarIndicator(
      rating: 3.5,
      itemSize: 20,
      itemBuilder: (_, index) => const Icon(
        Icons.star_rate_rounded,
        color: Colors.amber,
      ),
    );
  }
}
