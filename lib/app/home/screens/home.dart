import 'package:cook_book/utils/constants/sizes.dart';
import 'package:cook_book/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

import '../widgets/carousal_list.dart';
import '../widgets/category_list.dart';
import '../widgets/curved_background.dart';
import '../widgets/custom_appbar.dart';
import '../widgets/list_heading.dart';
import '../widgets/product_list.dart';
import '../widgets/search_bar.dart';

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
                  const ListHeaderBar(),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  SizedBox(
                    height: 80,
                    child: CategoryList(),
                  )
                ],
              ),
            ),

            /// Body
            const Padding(
              padding: EdgeInsets.all(TSizes.defaultSpace),
              child: CarousalList(),
            ),

            /// Item List
            ProductList(),
          ],
        ),
      ),
    );
  }
}
