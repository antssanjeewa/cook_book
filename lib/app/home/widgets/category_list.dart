import 'package:cook_book/utils/constants/image_strings.dart';
import 'package:cook_book/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class CategoryList extends StatelessWidget {
  CategoryList({
    Key? key,
  }) : super(key: key);

  final List<String> categoryList = [
    TImages.sportIcon,
    TImages.clothIcon,
    TImages.shoeIcon,
    TImages.cosmeticsIcon,
    TImages.animalIcon,
    TImages.toyIcon,
    TImages.furnitureIcon,
    TImages.jeweleryIcon,
    TImages.electronicsIcon,
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: categoryList.length,
      padding: const EdgeInsets.only(left: TSizes.defaultSpace),
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) => CategoryItem(icon: categoryList[index]),
    );
  }
}

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    Key? key,
    required this.icon,
  }) : super(key: key);

  final String icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
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
            child: Center(
              child: Image(
                image: AssetImage(icon),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
