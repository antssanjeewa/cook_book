import 'package:cook_book/app/login/controllers/authentication_repository.dart';
import 'package:cook_book/app/login/controllers/verify_email_controller.dart';
import 'package:cook_book/utils/constants/image_strings.dart';
import 'package:cook_book/utils/constants/sizes.dart';
import 'package:cook_book/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key, this.email});

  final String? email;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(VerifyEmailController());

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [IconButton(onPressed: () => AuthenticationRepository.instance.logout(), icon: const Icon(Icons.close))],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(children: [
            const Image(
              image: AssetImage(TImages.deliveredEmailIllustration),
              width: double.infinity,
            ),
            const SizedBox(height: TSizes.spaceBtwSections),
            Text(TTexts.confirmEmail, style: Theme.of(context).textTheme.headlineMedium),
            const SizedBox(height: TSizes.spaceBtwItems),
            Text(email ?? '', style: Theme.of(context).textTheme.labelLarge),
            const SizedBox(height: TSizes.spaceBtwItems),
            Text(TTexts.confirmEmailSubTitle, style: Theme.of(context).textTheme.labelMedium),
            const SizedBox(height: TSizes.spaceBtwSections),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(onPressed: () {}, child: const Text(TTexts.tContinue)),
            ),
            const SizedBox(height: TSizes.spaceBtwItems),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(onPressed: () => controller.sendEmailVerification(), child: const Text(TTexts.resendEmail)),
            ),
          ]),
        ),
      ),
    );
  }
}
