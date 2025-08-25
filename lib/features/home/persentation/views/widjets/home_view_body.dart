import 'package:flutter/material.dart';

import '../../../../../core/utilts/assets.dart';
import 'custom_appBar.dart';
import 'custom_listView_Item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CustomAppBar(),
        CustomListViewItem()

      ],

    );
  }
}



