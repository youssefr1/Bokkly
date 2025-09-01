import 'package:bookly_app/features/search/presentation/widjets/search-listveiw.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../core/utilts/styles.dart';
import '../../../home/persentation/views/widjets/BestSellerItem.dart';
import 'custom_search_textfeild.dart';

class SearchVeiwBody extends StatelessWidget {
  const SearchVeiwBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomSearchTextFeild(),
          SizedBox(height: 16,),
          Text('Search Result',style: Styles.textStyle18,),
          SizedBox(height: 16,),
          Expanded(child: SearchResultListView())

        ],
      ),
    );
  }
}


