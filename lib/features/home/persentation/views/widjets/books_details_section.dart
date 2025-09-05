import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/persentation/views/widjets/custom_book_item.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utilts/styles.dart';
import 'BestSeller_rating.dart';
import 'books_actions.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.bookModel});
final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.22),
          child: CustomBookImage(
                  image: bookModel.volumeInfo.imageLinks?.thumbnail??'https://covers.openlibrary.org/b/id/10909258-L.jpg'),
        ),
        SizedBox(height: 34),
        Text(
          bookModel.volumeInfo.title??' No title',
          style: Styles.textStyle30.copyWith(fontWeight: FontWeight.w800),
          textAlign: TextAlign.center,
        ),
        Text(
          bookModel.volumeInfo.authors?[0]?? 'Unknown Author',
          textAlign: TextAlign.center,
          style: Styles.textStyle18.copyWith(
            color: Colors.grey,
            fontStyle: FontStyle.italic,

          ),
        ),
        SizedBox(height: 6),
         BookRating(mainAxisAlignment: MainAxisAlignment.center,count: bookModel.volumeInfo.ratingsCount ?? 0,rating: bookModel.volumeInfo.averageRating ?? 0,),
        SizedBox(height: 37),
        BooksAction(),
      ],
    );
  }
}
