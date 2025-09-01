import 'package:bookly_app/core/utilts/assets.dart';
import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../core/utilts/styles.dart';
import 'BestSellerItem.dart';
import 'best_seller_list_view.dart';
import 'custom_appBar.dart';
import 'featured_list_view.dart';
import 'custom_book_item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: CustomAppBar(),
              ),
              FeaturedBooksListView(),
              SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text(
                  'Best Seller',
                  style: Styles.textStyle20.copyWith(fontFamily: KGtSectraFine),
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: BestSellerListView(),
          ),
        ),
      ],
    );
  }
}
