import 'package:cook_book/utils/constants/colors.dart';
import 'package:cook_book/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({
    Key? key,
    required this.productImage,
  }) : super(key: key);

  final String productImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: TColors.light.withOpacity(0.1),
        borderRadius: BorderRadius.circular(TSizes.md),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(TSizes.md),
              color: TColors.dark.withOpacity(.9),
            ),
            padding: const EdgeInsets.all(TSizes.sm),
            child: Stack(
              children: [
                /// Image
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: TSizes.lg),
                    child: Image(
                      image: AssetImage(productImage),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),

                /// Sale Tag
                Positioned(
                  top: 12,
                  child: Container(
                    decoration: BoxDecoration(
                      color: TColors.secondary.withOpacity(0.8),
                      borderRadius: BorderRadius.circular(TSizes.sm),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: TSizes.sm, vertical: TSizes.xs),
                    child: Text(
                      "20%",
                      style: Theme.of(context).textTheme.labelLarge!.apply(color: TColors.black),
                    ),
                  ),
                ),

                /// Favorite
                Positioned(
                  top: 0,
                  right: 0,
                  child: Container(
                    decoration: BoxDecoration(
                      color: TColors.dark.withOpacity(0.8),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: IconButton(icon: const Icon(Icons.favorite), onPressed: () {}),
                  ),
                ),
              ],
            ),
          ),

          /// Item Details
          const SizedBox(height: TSizes.spaceBtwItems / 2),
          Padding(
            padding: const EdgeInsets.only(left: TSizes.sm),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Green Nike Air Shoes", style: Theme.of(context).textTheme.titleSmall),
                const SizedBox(height: TSizes.spaceBtwItems / 2),
                Text("Nike", style: Theme.of(context).textTheme.labelMedium),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Rs 230", style: Theme.of(context).textTheme.headlineMedium),
                    Container(
                      width: TSizes.iconLg * 2,
                      height: TSizes.iconLg * 2,
                      decoration: const BoxDecoration(
                        color: TColors.light,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(TSizes.md),
                          bottomRight: Radius.circular(TSizes.md),
                        ),
                      ),
                      child: const Icon(Icons.add, color: TColors.dark),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
