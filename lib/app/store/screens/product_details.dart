import 'package:cook_book/app/home/widgets/custom_curve.dart';
import 'package:cook_book/common/widgets/custom_appbar.dart';
import 'package:cook_book/common/widgets/section_heading.dart';
import 'package:cook_book/utils/constants/colors.dart';
import 'package:cook_book/utils/constants/image_strings.dart';
import 'package:cook_book/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Header
            const ProductHeader(),

            /// Details
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  //
                  const RatingAndShare(),
                  const SizedBox(height: TSizes.spaceBtwItems),

                  //
                  const PriceDetails(),
                  const SizedBox(height: TSizes.spaceBtwItems),

                  //
                  SizedBox(width: double.infinity, child: Text("Product Details", style: Theme.of(context).textTheme.titleMedium)),
                  const SizedBox(height: TSizes.spaceBtwItems),

                  //
                  const StockData(),
                  const SizedBox(height: TSizes.spaceBtwItems),

                  //
                  const BrandDetails(),
                  const SizedBox(height: TSizes.spaceBtwItems),

                  //
                  Row(
                    children: const [
                      Text("Variation"),
                    ],
                  ),
                  const SizedBox(height: TSizes.spaceBtwItems),

                  //
                  SizedBox(width: double.infinity, child: Text("Color", style: Theme.of(context).textTheme.headlineMedium)),
                  const ColorData(),
                  const SizedBox(height: TSizes.spaceBtwItems),

                  //
                  SizedBox(width: double.infinity, child: Text("Size", style: Theme.of(context).textTheme.headlineMedium)),
                  const SizeData(),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  //
                  SizedBox(width: double.infinity, child: ElevatedButton(onPressed: () {}, child: const Text("Checkout"))),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  //
                  SizedBox(width: double.infinity, child: Text("Description", style: Theme.of(context).textTheme.headlineMedium)),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  const ReadMoreText(
                    "description is here. In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before the final copy is available.",
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimExpandedText: "Show More",
                    trimCollapsedText: "Less",
                    moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  const Divider(),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  //
                  SectionHeaderBar(
                    title: "Reviews (20)",
                    onPressed: () {},
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
          color: Colors.grey.shade800,
          padding: const EdgeInsets.symmetric(vertical: TSizes.spaceBtwItems / 2, horizontal: TSizes.spaceBtwItems),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: TColors.dark,
                    ),
                    child: IconButton(onPressed: () {}, icon: const Icon(Icons.minimize)),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: TSizes.spaceBtwItems),
                    child: Text("2"),
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: TColors.dark,
                    ),
                    child: IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(padding: const EdgeInsets.all(TSizes.md), backgroundColor: TColors.black, side: BorderSide.none),
                child: const Text("Add to cart"),
              )
            ],
          )),
    );
  }
}

class SizeData extends StatelessWidget {
  const SizeData({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 10,
      children: [
        ChoiceChip(
          label: const Text("S"),
          selected: true,
          onSelected: (value) {},
        ),
        ChoiceChip(
          label: const Text("M"),
          selected: false,
          onSelected: (value) {},
        ),
        ChoiceChip(
          label: const Text("L"),
          selected: false,
          onSelected: (value) {},
        ),
      ],
    );
  }
}

class ColorData extends StatelessWidget {
  const ColorData({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8,
      children: [
        ChoiceChip(
          label: const SizedBox(),
          selected: true,
          backgroundColor: Colors.red,
          avatar: const SizedBox(
            width: 50,
            height: 50,
          ),
          shape: const CircleBorder(),
          padding: const EdgeInsets.all(0),
          labelPadding: const EdgeInsets.all(0),
          onSelected: (value) {},
        ),
        ChoiceChip(
          label: const SizedBox(),
          selected: false,
          backgroundColor: Colors.green,
          avatar: const SizedBox(
            width: 50,
            height: 50,
          ),
          shape: const CircleBorder(),
          padding: const EdgeInsets.all(0),
          labelPadding: const EdgeInsets.all(0),
          onSelected: (value) {},
        ),
        ChoiceChip(
          label: const SizedBox(),
          selected: false,
          backgroundColor: Colors.blue,
          avatar: const SizedBox(
            width: 50,
            height: 50,
          ),
          shape: const CircleBorder(),
          padding: const EdgeInsets.all(0),
          labelPadding: const EdgeInsets.all(0),
          onSelected: (value) {},
        ),
      ],
    );
  }
}

class BrandDetails extends StatelessWidget {
  const BrandDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Image(
          image: AssetImage(TImages.nikeLogo),
          height: 26,
          width: 16,
          color: TColors.light,
        ),
        const SizedBox(width: TSizes.spaceBtwItems / 2),
        Text("Nike", style: Theme.of(context).textTheme.titleMedium),
      ],
    );
  }
}

class StockData extends StatelessWidget {
  const StockData({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("Stock :", style: Theme.of(context).textTheme.bodyMedium),
        const SizedBox(width: TSizes.spaceBtwItems / 2),
        Text("In Stock", style: Theme.of(context).textTheme.titleLarge),
      ],
    );
  }
}

class PriceDetails extends StatelessWidget {
  const PriceDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
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
        const SizedBox(width: TSizes.spaceBtwItems),
        Text("Rs 250", style: Theme.of(context).textTheme.titleLarge!.apply(decoration: TextDecoration.lineThrough)),
        const SizedBox(width: TSizes.spaceBtwItems),
        Text("Rs 200", style: Theme.of(context).textTheme.headlineMedium),
      ],
    );
  }
}

class RatingAndShare extends StatelessWidget {
  const RatingAndShare({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            const Icon(Icons.star, color: Colors.amber),
            const SizedBox(width: TSizes.spaceBtwItems / 2),
            Text("5.0 ", style: Theme.of(context).textTheme.bodyLarge),
            Text("(25)", style: Theme.of(context).textTheme.bodySmall),
          ],
        ),
        const Icon(Icons.share),
      ],
    );
  }
}

class ProductHeader extends StatelessWidget {
  const ProductHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CustomCurvedEdged(),
      child: Container(
        color: TColors.darkGrey,
        child: Stack(
          children: [
            const TAppBar(actions: [Icon(Icons.favorite_border)]),
            Container(
              height: 400,
              padding: const EdgeInsets.all(TSizes.productImageRadius),
              alignment: Alignment.center,
              child: const Image(
                height: 350,
                image: AssetImage(TImages.productImage5),
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              bottom: 30,
              right: 0,
              left: 30,
              child: SizedBox(
                width: double.infinity,
                height: 80,
                child: ListView.separated(
                  itemCount: 5,
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (_, __) => const SizedBox(width: TSizes.spaceBtwItems),
                  itemBuilder: (_, index) => Container(
                    height: 80,
                    decoration: BoxDecoration(
                      color: TColors.dark,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: TColors.light.withOpacity(0.4)),
                    ),
                    child: const Image(
                      image: AssetImage(TImages.productImage2),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
