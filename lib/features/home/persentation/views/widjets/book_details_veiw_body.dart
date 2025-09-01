import 'package:bookly_app/core/utilts/styles.dart';
import 'package:bookly_app/features/home/persentation/views/widjets/custom_book_item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'custom_book_details_app_bar.dart';

class BookDetailsVeiwBody extends StatelessWidget {
  const BookDetailsVeiwBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        children: [
          CustomBookDetailsAppBar(),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: width*0.22),
            child: CustomBookImage(),
          ),
          SizedBox(height: 34,),
          Text('The Jungle Book',style: Styles.textStyle30.copyWith(fontWeight: FontWeight.bold),),
          SizedBox(height: 6,),
          Text('Rudyard kipling',style: Styles.textStyle18.copyWith(color: Colors.grey.shade700),)
          ]
      ),
    );
  }
}
