import 'package:cook_book/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnBoardPage extends StatelessWidget {
  const OnBoardPage({
    Key? key,
    required this.image,
    required this.title,
    required this.subTitle,
  }) : super(key: key);

  final String image, title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(TSizes.defaultSpace),
      child: Column(
        children: [
          SvgPicture.asset(image),
          Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const SizedBox(height: TSizes.spaceBtwItems),
          Text(
            subTitle,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }
}
