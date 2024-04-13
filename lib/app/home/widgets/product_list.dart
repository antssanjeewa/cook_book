import 'package:cook_book/utils/constants/image_strings.dart';
import 'package:cook_book/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import 'product_item.dart';

class ProductList extends StatelessWidget {
  ProductList({
    Key? key,
  }) : super(key: key);

  final List<String> productList = [
    TImages.productImage1,
    TImages.productImage5,
    TImages.productImage2,
    TImages.productImage37,
    TImages.productImage32,
    TImages.productImage34,
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: productList.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.all(TSizes.lg),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: TSizes.gridViewSpacing,
        crossAxisSpacing: TSizes.gridViewSpacing,
        mainAxisExtent: 330,
      ),
      itemBuilder: (_, index) => ProductItem(
        productImage: productList[index],
      ),
    );
  }
}
