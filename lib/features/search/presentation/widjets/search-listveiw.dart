import 'package:flutter/cupertino.dart';

import '../../../home/persentation/views/widjets/BestSellerItem.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
      shrinkWrap: true,
      padding:EdgeInsets.zero,
      itemBuilder:(context,index){
        return Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: const BookListViewItem(),
        );
      },itemCount: 10,);
  }
}