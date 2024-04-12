import 'package:carousel_slider/carousel_slider.dart';
import 'package:cook_book/utils/constants/image_strings.dart';
import 'package:cook_book/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class CarousalList extends StatelessWidget {
  const CarousalList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(viewportFraction: 1),
      items: const [
        CarousalItem(image: TImages.banner1),
        CarousalItem(image: TImages.banner2),
        CarousalItem(image: TImages.banner3),
      ],
    );
  }
}

class CarousalItem extends StatelessWidget {
  const CarousalItem({
    super.key,
    required this.image,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(TSizes.md),
      ),
      padding: const EdgeInsets.symmetric(horizontal: TSizes.md),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(TSizes.md),
        child: Image(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
