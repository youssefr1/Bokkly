import 'package:bookly_app/core/utilts/styles.dart';
import 'package:bookly_app/core/widjets/custom_button.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/persentation/views/widjets/custom_book_item.dart';
import 'package:bookly_app/features/home/persentation/views/widjets/similar_books_list_view.dart';
import 'package:bookly_app/features/home/persentation/views/widjets/similar_books_section.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'BestSeller_rating.dart';
import 'books_actions.dart';
import 'books_details_section.dart';
import 'custom_book_details_app_bar.dart';

class BookDetailsVeiwBody extends StatelessWidget {
  const BookDetailsVeiwBody({super.key, required this.bookModel});
final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Column(
              children: [
                CustomBookDetailsAppBar(),
                BookDetailsSection(bookModel: bookModel,),
                Expanded(child: SizedBox(height: 50)),
                SimilarBooksSection(),
                SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
