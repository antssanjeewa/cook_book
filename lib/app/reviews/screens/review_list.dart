import 'package:cook_book/app/reviews/widgets/rating_value.dart';
import 'package:cook_book/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import '../widgets/rating_card.dart';
import '../widgets/rating_summary.dart';

class ReviewLstScreen extends StatelessWidget {
  const ReviewLstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Review & Ratings"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              RatingSummary(),
              RatingStarts(),

              //
              RatingCard(),
              RatingCard(),
            ],
          ),
        ),
      ),
    );
  }
}
