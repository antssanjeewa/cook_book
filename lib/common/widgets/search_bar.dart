import 'package:cook_book/utils/constants/colors.dart';
import 'package:cook_book/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
    this.borderColor = TColors.black,
  }) : super(key: key);

  final Color borderColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: TSizes.defaultSpace),
      child: Container(
        padding: const EdgeInsets.all(TSizes.md),
        decoration: BoxDecoration(
          color: Theme.of(context).scaffoldBackgroundColor,
          borderRadius: BorderRadius.circular(TSizes.cardRadiusLg),
          border: Border.all(color: borderColor),
        ),
        child: Row(
          children: [
            const Icon(Icons.search, color: TColors.grey),
            const SizedBox(width: TSizes.spaceBtwItems),
            Text(
              "Search in Here",
              style: Theme.of(context).textTheme.bodySmall,
            )
          ],
        ),
      ),
    );
  }
}
