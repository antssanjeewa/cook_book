import 'package:cook_book/app/login/controllers/sign_in_controller.dart';
import 'package:cook_book/utils/constants/colors.dart';
import 'package:cook_book/utils/constants/image_strings.dart';
import 'package:cook_book/utils/constants/sizes.dart';
import 'package:cook_book/utils/constants/text_strings.dart';
import 'package:cook_book/utils/validators/validation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignInScreen extends StatelessWidget {
  SignInScreen({super.key});

  final controller = Get.put(SignInController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                TTexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: TSizes.spaceBtwSections),

              ///
              Form(
                key: controller.signUpFormKey,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            decoration: const InputDecoration(
                              prefixIcon: Icon(Icons.person),
                              labelText: TTexts.firstName,
                            ),
                            validator: (value) => TValidator.validateEmptyTest('firstName', value),
                            controller: controller.firstName,
                          ),
                        ),

                        //
                        const SizedBox(width: TSizes.defaultSpace),

                        //
                        Expanded(
                          child: TextFormField(
                            decoration: const InputDecoration(
                              prefixIcon: Icon(Icons.person),
                              labelText: TTexts.lastName,
                            ),
                            validator: (value) => TValidator.validateEmptyTest('lastName', value),
                            controller: controller.lastName,
                          ),
                        ),
                      ],
                    ),

                    ///
                    const SizedBox(height: TSizes.defaultSpace),

                    ///
                    TextFormField(
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.person),
                        labelText: TTexts.username,
                      ),
                      validator: (value) => TValidator.validateEmptyTest('username', value),
                      controller: controller.userName,
                    ),
                    const SizedBox(height: TSizes.defaultSpace),

                    //
                    TextFormField(
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.email),
                        labelText: TTexts.email,
                      ),
                      validator: (value) => TValidator.validateEmail(value),
                      controller: controller.email,
                    ),
                    const SizedBox(height: TSizes.defaultSpace),

                    //
                    TextFormField(
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.phone),
                        labelText: TTexts.phoneNo,
                      ),
                      validator: (value) => TValidator.validatePhoneNumber(value),
                      controller: controller.phoneNumber,
                    ),
                    const SizedBox(height: TSizes.defaultSpace),

                    //
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
                        obscureText: controller.hidePassword.value,
                        validator: (value) => TValidator.validatePassword(value),
                        controller: controller.password,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: TSizes.spaceBtwSections),

              ///
              Row(
                children: [
                  SizedBox(
                    width: 24,
                    height: 24,
                    child: Obx(
                      () => Checkbox(
                        value: controller.privacyPolicy.value,
                        onChanged: (value) => controller.privacyPolicy.value = !controller.privacyPolicy.value,
                      ),
                    ),
                  ),
                  const SizedBox(width: TSizes.spaceBtwItems),
                  Text.rich(TextSpan(
                    children: [
                      TextSpan(
                        text: '${TTexts.iAgreeTo} ',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      TextSpan(
                        text: TTexts.privacyPolicy,
                        style: Theme.of(context).textTheme.bodyMedium!.apply(
                              color: TColors.white,
                              decoration: TextDecoration.underline,
                            ),
                      ),
                      TextSpan(
                        text: ' ${TTexts.and} ',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      TextSpan(
                        text: TTexts.termsOfUse,
                        style: Theme.of(context).textTheme.bodyMedium!.apply(
                              color: TColors.white,
                              decoration: TextDecoration.underline,
                            ),
                      ),
                    ],
                  ))
                ],
              ),

              const SizedBox(height: TSizes.spaceBtwSections),

              ///

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => controller.signUp(),
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
                  //
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

                  //
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
