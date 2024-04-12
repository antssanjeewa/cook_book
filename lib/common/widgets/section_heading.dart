import 'package:cook_book/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class SectionHeaderBar extends StatelessWidget {
  const SectionHeaderBar({
    Key? key,
    required this.title,
    this.onPressed,
  }) : super(key: key);

  final String title;

  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: TSizes.defaultSpace),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: Theme.of(context).textTheme.headlineSmall),
          if (onPressed != null)
            TextButton(
              onPressed: onPressed,
              child: Text("View all"),
            )
        ],
      ),
    );
  }
}
