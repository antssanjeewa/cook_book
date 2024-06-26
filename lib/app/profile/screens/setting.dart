import 'package:cook_book/app/home/widgets/curved_background.dart';
import 'package:cook_book/app/login/controllers/authentication_repository.dart';
import 'package:cook_book/app/login/screens/login.dart';
import 'package:cook_book/app/profile/screens/address.dart';
import 'package:cook_book/common/widgets/custom_appbar.dart';
import 'package:cook_book/common/widgets/section_heading.dart';
import 'package:cook_book/utils/constants/image_strings.dart';
import 'package:cook_book/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'profile.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

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
                    title: Text("Settings", style: Theme.of(context).textTheme.headlineMedium),
                  ),
                  ListTile(
                    leading: const Image(image: AssetImage(TImages.user)),
                    title: const Text("Sameera Sanjeewa"),
                    subtitle: const Text("sameeraefac94@gmail.com"),
                    trailing: IconButton(icon: const Icon(Icons.edit), onPressed: () => Get.to(() => const ProfileScreen())),
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections),
                ],
              ),
            ),

            const SizedBox(height: TSizes.spaceBtwItems),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: TSizes.defaultSpace),
              child: SectionHeaderBar(title: "Account Settings"),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: TSizes.defaultSpace),
              child: Column(
                children: [
                  ListTile(
                    leading: const Icon(Icons.home_outlined, size: 40),
                    title: const Text("My Address"),
                    subtitle: const Text("Set Delivery Addresses"),
                    onTap: () => Get.to(() => const AddressScreen()),
                  ),
                  const ListTile(
                    leading: Icon(Icons.shopping_cart, size: 40),
                    title: Text("My Cart"),
                    subtitle: Text("Email, Password, Personal Details"),
                  ),
                  const ListTile(
                    leading: Icon(Icons.shopping_bag, size: 40),
                    title: Text("My Orders"),
                    subtitle: Text("Email, Password, Personal Details"),
                  ),
                  const ListTile(
                    leading: Icon(Icons.notifications, size: 40),
                    title: Text("Notifications"),
                    subtitle: Text("Email, Password, Personal Details"),
                  ),
                  const ListTile(
                    leading: Icon(Icons.security, size: 40),
                    title: Text("Account Privacy"),
                    subtitle: Text("Email, Password, Personal Details"),
                  ),
                  const ListTile(
                    leading: Icon(Icons.people, size: 40),
                    title: Text("About Us"),
                    subtitle: Text("Email, Password, Personal Details"),
                  ),
                ],
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwItems),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: TSizes.defaultSpace),
              child: SectionHeaderBar(title: "App Settings"),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: TSizes.defaultSpace),
              child: Column(
                children: [
                  const ListTile(
                    leading: Icon(Icons.stacked_line_chart_outlined, size: 40),
                    title: Text("Load Date"),
                    subtitle: Text("Email, Password, Personal Details"),
                  ),
                  ListTile(
                    leading: const Icon(Icons.my_location, size: 40),
                    title: const Text("Geo location"),
                    subtitle: const Text("Email, Password, Personal Details"),
                    trailing: Switch(
                      value: true,
                      onChanged: (value) {},
                    ),
                  ),
                  ListTile(
                    leading: const Icon(Icons.safety_check, size: 40),
                    title: const Text("Safe Mode"),
                    subtitle: const Text("Email, Password, Personal Details"),
                    trailing: Switch(
                      value: false,
                      onChanged: (value) {},
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                  onPressed: () => AuthenticationRepository.instance.logout(),
                  child: const Text("Log Out"),
                ),
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwSections)
          ],
        ),
      ),
    );
  }
}
