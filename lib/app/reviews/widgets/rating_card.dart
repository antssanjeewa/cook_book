import 'package:cook_book/utils/constants/colors.dart';
import 'package:cook_book/utils/constants/image_strings.dart';
import 'package:cook_book/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

import 'rating_value.dart';

class RatingCard extends StatelessWidget {
  const RatingCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: TSizes.defaultSpace),
      child: Column(children: [
        // user
        const ListTile(
          leading: CircleAvatar(backgroundImage: AssetImage(TImages.userProfileImage1)),
          title: Text("User name"),
          trailing: Icon(Icons.more_vert),
          contentPadding: EdgeInsets.zero,
        ),
        const SizedBox(height: TSizes.spaceBtwItems),

        // rating
        Row(
          children: [
            const RatingStarts(),
            const SizedBox(width: TSizes.spaceBtwItems),
            Text("01-Nov-2024", style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems),

        // review
        const ReadMoreText(
          "description is here. In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before the final copy is available.",
          trimLines: 2,
          trimMode: TrimMode.Line,
          trimExpandedText: "Less",
          trimCollapsedText: "read More",
          moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: TColors.primary),
          lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: TColors.primary),
        ),
        const SizedBox(height: TSizes.spaceBtwItems),

        // comment
        Container(
          decoration: BoxDecoration(
            color: TColors.darkerGrey,
            borderRadius: BorderRadius.circular(TSizes.md),
          ),
          padding: EdgeInsets.all(TSizes.md),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("T's Store", style: Theme.of(context).textTheme.bodyLarge),
                  Text("01-Nov-2024", style: Theme.of(context).textTheme.bodyMedium),
                ],
              ),
              const SizedBox(height: TSizes.spaceBtwItems),
              const ReadMoreText(
                "description is here. In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before the final copy is available.",
                trimLines: 2,
                trimMode: TrimMode.Line,
                trimExpandedText: "Less",
                trimCollapsedText: "read More",
                moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: TColors.primary),
                lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: TColors.primary),
              ),
            ],
          ),
        )
      ]),
    );
  }
}
