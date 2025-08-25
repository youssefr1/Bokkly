import 'package:flutter/material.dart';

import '../../../../../core/utilts/styles.dart';
import 'custom_appBar.dart';
import 'featured_list_view.dart';
import 'featured_list_view_item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          FeaturedBooksListView(),
          SizedBox(
            height: 50,
          ),
          Text('Best Seller', style: Styles.titleMedium),
        ],
      ),
    );
  }
}
