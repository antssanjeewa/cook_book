import 'package:cook_book/app/login/controllers/login_controller.dart';
import 'package:cook_book/app/login/screens/sign_in.dart';
import 'package:cook_book/utils/constants/image_strings.dart';
import 'package:cook_book/utils/constants/sizes.dart';
import 'package:cook_book/utils/constants/text_strings.dart';
import 'package:cook_book/utils/validators/validation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final controller = Get.put(LogInController());

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
                key: controller.loginFormKey,
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.mail_outlined),
                        labelText: TTexts.email,
                      ),
                      controller: controller.email,
                      validator: (value) => TValidator.validateEmail(value),
                    ),

                    ///
                    const SizedBox(height: TSizes.defaultSpace),

                    ///
                    Obx(
                      () => TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.password_rounded),
                          labelText: TTexts.password,
                          suffixIcon: IconButton(
                            onPressed: () => controller.hidePassword.value = !controller.hidePassword.value,
                            icon: Icon(controller.hidePassword.value ? Icons.visibility_off : Icons.visibility),
                          ),
                        ),
                        controller: controller.password,
                        obscureText: controller.hidePassword.value,
                        validator: (value) => TValidator.validatePassword(value),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: TSizes.defaultSpace),

              //
              Row(
                children: [
                  Obx(
                    () => Checkbox(
                      value: controller.rememberMe.value,
                      onChanged: (value) => controller.rememberMe.value = !controller.rememberMe.value,
                    ),
                  ),
                  const SizedBox(width: TSizes.spaceBtwItems),
                  const Text(TTexts.rememberMe),
                ],
              ),

              ///
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => controller.login(),
                  child: const Text(TTexts.signIn),
                ),
              ),
              const SizedBox(height: TSizes.defaultSpace),
              SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                  onPressed: () => Get.to(() => SignInScreen()),
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
