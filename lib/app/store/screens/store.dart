import 'package:cook_book/app/store/widgets/brand_list.dart';
import 'package:cook_book/common/widgets/custom_appbar.dart';
import 'package:cook_book/common/widgets/search_bar.dart';
import 'package:cook_book/common/widgets/section_heading.dart';
import 'package:cook_book/utils/constants/colors.dart';
import 'package:cook_book/utils/constants/image_strings.dart';
import 'package:cook_book/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text("Store", style: Theme.of(context).textTheme.headlineMedium),
        actions: const [
          Icon(Icons.shopping_cart),
        ],
      ),
      body: Column(
        children: [
          /// Search Bar
          const Padding(
            padding: EdgeInsets.symmetric(vertical: TSizes.spaceBtwSections),
            child: SearchBar(borderColor: Colors.grey),
          ),

          /// Feature Brands
          SectionHeaderBar(
            title: "Featured Brands",
            onPressed: () {},
          ),

          /// Brans List
          BrandList()
        ],
      ),
    );
  }
}
