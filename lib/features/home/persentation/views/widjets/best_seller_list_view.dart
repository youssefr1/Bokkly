import 'package:flutter/cupertino.dart';

import 'BestSellerItem.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      padding:EdgeInsets.zero,
      itemBuilder:(context,index){
        return Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: const BestSellerItem(),
        );
      },itemCount: 10,);
  }
}