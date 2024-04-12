import 'package:cook_book/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class ListHeaderBar extends StatelessWidget {
  const ListHeaderBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: TSizes.defaultSpace),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text("Popular Categories", style: Theme.of(context).textTheme.headlineSmall),
        ],
      ),
    );
  }
}
