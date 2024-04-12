import 'package:cook_book/utils/constants/colors.dart';
import 'package:cook_book/utils/constants/image_strings.dart';
import 'package:cook_book/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class BrandList extends StatelessWidget {
  BrandList({
    Key? key,
  }) : super(key: key);

  final List<String> brandList = [
    TImages.pumaLogo,
    TImages.zaraLogo,
    TImages.nikeLogo,
    TImages.ikeaLogo,
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: brandList.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.all(TSizes.lg),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: TSizes.gridViewSpacing,
        crossAxisSpacing: TSizes.gridViewSpacing,
        mainAxisExtent: 80,
      ),
      itemBuilder: (_, index) => Container(
        decoration: BoxDecoration(
          border: Border.all(color: TColors.light.withOpacity(0.5)),
          borderRadius: BorderRadius.circular(TSizes.md),
        ),
        child: Row(
          children: [
            Flexible(
              child: Container(
                width: 56,
                height: 56,
                padding: const EdgeInsets.all(TSizes.sm),
                child: Image(
                  image: AssetImage(brandList[index]),
                  fit: BoxFit.contain,
                  color: TColors.light,
                ),
              ),
            ),
            const SizedBox(width: TSizes.spaceBtwItems),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Puma", style: Theme.of(context).textTheme.titleMedium),
                Text("256 products", style: Theme.of(context).textTheme.labelMedium),
              ],
            )
          ],
        ),
      ),
    );
  }
}
