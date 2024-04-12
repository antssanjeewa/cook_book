import 'package:cook_book/app/store/widgets/brand_list.dart';
import 'package:cook_book/common/widgets/custom_appbar.dart';
import 'package:cook_book/common/widgets/search_bar.dart';
import 'package:cook_book/common/widgets/section_heading.dart';
import 'package:cook_book/utils/constants/colors.dart';
import 'package:cook_book/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: TAppBar(
          title: Text("Store", style: Theme.of(context).textTheme.headlineMedium),
          actions: const [
            Icon(Icons.shopping_cart),
          ],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrolled) => [
            SliverAppBar(
              pinned: true,
              floating: true,
              expandedHeight: 460,
              automaticallyImplyLeading: false,
              flexibleSpace: Padding(
                padding: const EdgeInsets.all(TSizes.xs),
                child: ListView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    /// Search Bar
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: TSizes.spaceBtwSections),
                      child: SearchBar(borderColor: Colors.grey),
                    ),

                    /// Feature Brands
                    SectionHeaderBar(
                      title: "Featured Brands",
                      onPressed: () {},
                    ),

                    /// Brans List
                    BrandList()
                  ],
                ),
              ),
              bottom: const TabBar(
                isScrollable: true,
                indicatorColor: TColors.primary,
                tabs: [
                  Tab(child: Text("Sports")),
                  Tab(child: Text("Furniture")),
                  Tab(child: Text("Electronics")),
                  Tab(child: Text("Cloths")),
                  Tab(child: Text("Cosmetics")),
                ],
              ),
            ),
          ],
          body: TabBarView(
            children: [
              Container(color: Colors.blue),
              Container(color: Colors.red),
              Container(color: Colors.green),
              Container(color: Colors.yellow),
              Container(color: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
