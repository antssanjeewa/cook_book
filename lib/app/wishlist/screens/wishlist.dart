import 'package:cook_book/app/home/widgets/product_list.dart';
import 'package:cook_book/common/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text("Store", style: Theme.of(context).textTheme.headlineMedium),
        actions: const [
          Icon(Icons.add),
        ],
      ),
      body: SingleChildScrollView(child: ProductList()),
    );
  }
}
