import 'package:cook_book/app/login/controllers/user_repository.dart';
import 'package:cook_book/app/login/models/user.dart';
import 'package:cook_book/common/widgets/custom_appbar.dart';
import 'package:cook_book/common/widgets/search_bar.dart';
import 'package:cook_book/common/widgets/section_heading.dart';
import 'package:cook_book/utils/constants/sizes.dart';
import 'package:cook_book/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/carousal_list.dart';
import '../widgets/category_list.dart';
import '../widgets/curved_background.dart';
import '../widgets/product_list.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final userRepository = Get.put(UserRepository());

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: userRepository.fetchUserDetails(),
        builder: (context, snapshot) {
          User? user = snapshot.data;
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
                              Text(user?.email ?? '', style: Theme.of(context).textTheme.headlineSmall),
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
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: TSizes.defaultSpace),
                          child: SectionHeaderBar(title: "Popular Categories"),
                        ),
                        const SizedBox(height: TSizes.spaceBtwItems),
                        SizedBox(
                          height: 100,
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
        });
  }
}
