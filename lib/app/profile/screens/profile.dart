import 'package:cook_book/common/widgets/section_heading.dart';
import 'package:cook_book/utils/constants/colors.dart';
import 'package:cook_book/utils/constants/image_strings.dart';
import 'package:cook_book/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              /// Avatar
              const Image(image: AssetImage(TImages.user)),
              const SizedBox(height: TSizes.spaceBtwSections),

              /// Details
              const Divider(),
              const SizedBox(height: TSizes.spaceBtwSections),
              const SectionHeaderBar(title: "Profile Information"),
              Padding(
                padding: const EdgeInsets.all(TSizes.defaultSpace),
                child: Column(
                  children: const [
                    DetailItem(name: "Name", value: "Sameera Sanjeewa"),
                    DetailItem(name: "Email", value: "sameeraefac94@gmail.com"),
                  ],
                ),
              ),

              /// Other DetailsS
              const Divider(),
              const SizedBox(height: TSizes.defaultSpace),
              const SectionHeaderBar(title: "Personal Information"),
              Padding(
                padding: const EdgeInsets.all(TSizes.defaultSpace),
                child: Column(
                  children: const [
                    DetailItem(name: "Gender", value: "Male"),
                    DetailItem(name: "Mobile", value: "+94 71255 4866"),
                    DetailItem(name: "Date of Birth", value: "14-07-1994"),
                    DetailItem(name: "Address", value: "Urubokka"),
                  ],
                ),
              ),

              /// Close Button
              const Divider(),
              const SizedBox(height: TSizes.defaultSpace),
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Delete Account",
                    style: TextStyle(color: TColors.error),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

class DetailItem extends StatelessWidget {
  const DetailItem({
    Key? key,
    required this.name,
    required this.value,
  }) : super(key: key);

  final String name, value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: TSizes.spaceBtwItems / 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(name, style: Theme.of(context).textTheme.bodySmall),
          Text(value, style: Theme.of(context).textTheme.bodyMedium),
        ],
      ),
    );
  }
}
