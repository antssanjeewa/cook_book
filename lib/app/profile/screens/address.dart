import 'package:cook_book/common/widgets/rounded_container.dart';
import 'package:cook_book/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class AddressScreen extends StatelessWidget {
  const AddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Addresses"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: const [
              AddressCard(),
              AddressCard(),
              AddressCard(),
            ],
          ),
        ),
      ),
    );
  }
}

class AddressCard extends StatelessWidget {
  const AddressCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RoundedContainer(
      margin: TSizes.sm,
      child: SizedBox(
        width: double.infinity,
        child: Stack(
          children: [
            const Positioned(
              right: 0,
              child: Icon(Icons.check_circle),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("User Name", style: Theme.of(context).textTheme.bodyLarge),
                Text("Address 01", style: Theme.of(context).textTheme.bodyMedium),
                Text("Address 02", style: Theme.of(context).textTheme.bodyMedium),
              ],
            )
          ],
        ),
      ),
    );
  }
}
