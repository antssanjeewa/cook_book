import 'package:cook_book/app/navigation_menu.dart';
import 'package:cook_book/utils/constants/image_strings.dart';
import 'package:cook_book/utils/constants/sizes.dart';
import 'package:cook_book/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: TSizes.appBarHeight,
            horizontal: TSizes.defaultSpace,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 50),
              const Image(
                height: 100,
                image: AssetImage(TImages.lightAppLogo),
              ),
              Text(
                TTexts.loginTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              Text(
                TTexts.loginSubTitle,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(height: 50),

              ///
              Form(
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.mail_outlined),
                        labelText: TTexts.email,
                      ),
                    ),

                    ///
                    const SizedBox(height: TSizes.defaultSpace),

                    ///
                    TextFormField(
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.password_rounded),
                        labelText: TTexts.password,
                        suffixIcon: Icon(Icons.remove_red_eye),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: TSizes.defaultSpace),

              ///
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Get.off(() => NavigationMenu()),
                  child: const Text(TTexts.signIn),
                ),
              ),
              const SizedBox(height: TSizes.defaultSpace),
              SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                  onPressed: () {},
                  child: const Text(TTexts.createAccount),
                ),
              ),
              const SizedBox(height: TSizes.defaultSpace),

              ///
              Row(
                children: [
                  const Flexible(
                    child: Divider(thickness: 0.5, indent: 60, endIndent: 5),
                  ),
                  Text(TTexts.orSignInWith, style: Theme.of(context).textTheme.labelMedium),
                  const Flexible(
                    child: Divider(thickness: 0.5, indent: 5, endIndent: 60),
                  ),
                ],
              ),

              const SizedBox(height: TSizes.defaultSpace),

              ///
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Image(
                        width: TSizes.iconMd,
                        height: TSizes.iconMd,
                        image: AssetImage(TImages.google),
                      ),
                    ),
                  ),
                  const SizedBox(width: TSizes.defaultSpace),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Image(
                        width: TSizes.iconMd,
                        height: TSizes.iconMd,
                        image: AssetImage(TImages.facebook),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
