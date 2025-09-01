import 'package:bookly_app/features/home/persentation/views/widjets/custom_book_item.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utilts/styles.dart';
import 'BestSeller_rating.dart';
import 'books_actions.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: width * 0.22,
          ),
          child: CustomBookImage(),
        ),
        SizedBox(height: 34),
        Text(
          'The Jungle Book',
          style: Styles.textStyle30.copyWith(
            fontWeight: FontWeight.w800,
          ),
        ),
        Text(
          'Rudyard kipling',
          style: Styles.textStyle18.copyWith(
            color: Colors.grey,
            fontStyle: FontStyle.italic,
          ),
        ),
        SizedBox(height: 6),
        BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        SizedBox(height: 37),
        BooksAction(),
      ],
    );
  }
}