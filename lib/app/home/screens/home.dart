import 'package:carousel_slider/carousel_slider.dart';
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
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: CarouselSlider(
                options: CarouselOptions(viewportFraction: 1),
                items: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(TSizes.md),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: TSizes.md),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(TSizes.md),
                      child: const Image(
                        image: AssetImage(TImages.banner1),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            /// Item List
            GridView.builder(
              itemCount: 6,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.all(TSizes.lg),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: TSizes.gridViewSpacing,
                crossAxisSpacing: TSizes.gridViewSpacing,
                mainAxisExtent: 330,
              ),
              itemBuilder: (_, index) => Container(
                // width: 180,
                decoration: BoxDecoration(
                  color: Colors.grey.shade900,
                  borderRadius: BorderRadius.circular(TSizes.md),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(TSizes.md),
                        color: Colors.grey.shade800.withOpacity(.3),
                      ),
                      padding: const EdgeInsets.all(TSizes.sm),
                      child: Stack(
                        children: [
                          /// Image
                          ClipRRect(
                            borderRadius: BorderRadius.circular(TSizes.md),
                            child: const Image(
                              image: AssetImage(TImages.productImage1),
                              fit: BoxFit.cover,
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
                                width: TSizes.iconLg * 1.2,
                                height: TSizes.iconLg * 1.2,
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
              ),
            ),
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
