import 'package:cook_book/utils/constants/colors.dart';
import 'package:cook_book/utils/constants/image_strings.dart';
import 'package:cook_book/utils/constants/sizes.dart';
import 'package:cook_book/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_appbar.dart';
import '../widgets/custom_curve.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Header
            CurvedBackground(
              child: Column(
                children: [
                  /// App Bar
                  TAppBar(
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(TTexts.homeAppbarTitle, style: Theme.of(context).textTheme.labelMedium),
                        Text(TTexts.homeAppbarSubTitle, style: Theme.of(context).textTheme.headlineSmall),
                      ],
                    ),
                    actions: const [
                      Icon(Icons.shopping_cart),
                    ],
                  ),

                  /// Search Field
                  const SizedBox(height: TSizes.spaceBtwSections),
                  const SearchBar(),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  /// Category List
                  Padding(
                    padding: const EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("Popular Categories", style: Theme.of(context).textTheme.headlineSmall),
                      ],
                    ),
                  ),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  SizedBox(
                    height: 80,
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: 10,
                      padding: const EdgeInsets.only(left: TSizes.defaultSpace),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.only(right: TSizes.spaceBtwItems),
                        child: Column(
                          children: [
                            Container(
                              height: 56,
                              width: 56,
                              padding: const EdgeInsets.all(TSizes.sm),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Colors.white,
                              ),
                              child: const Center(
                                child: Image(
                                  image: AssetImage(TImages.shoeIcon),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),

            /// Body
          ],
        ),
      ),
    );
  }
}

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: TSizes.defaultSpace),
      child: Container(
        padding: const EdgeInsets.all(TSizes.md),
        decoration: BoxDecoration(
          color: Theme.of(context).scaffoldBackgroundColor,
          borderRadius: BorderRadius.circular(TSizes.cardRadiusLg),
          border: Border.all(color: TColors.black),
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

class CurvedBackground extends StatelessWidget {
  const CurvedBackground({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CustomCurvedEdged(),
      child: Container(
        height: 400,
        color: TColors.primary,
        child: Stack(
          children: [
            const Positioned(top: -150, right: -250, child: BackgroundCircle()),
            const Positioned(top: 100, right: -300, child: BackgroundCircle()),
            child,
          ],
        ),
      ),
    );
  }
}

class BackgroundCircle extends StatelessWidget {
  const BackgroundCircle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 400,
      padding: const EdgeInsets.all(0),
      decoration: BoxDecoration(
        color: TColors.textWhite.withOpacity(0.1),
        borderRadius: BorderRadius.circular(400),
      ),
    );
  }
}
