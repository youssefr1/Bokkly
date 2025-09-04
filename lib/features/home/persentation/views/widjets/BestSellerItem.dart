import 'package:bookly_app/core/utilts/app_router.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/persentation/views/widjets/custom_book_item.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../constants.dart';
import '../../../../../core/utilts/assets.dart';
import '../../../../../core/utilts/styles.dart';
import 'BestSeller_rating.dart';
import 'home_view_body.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({
    super.key,
    required this.bookModel,
  });

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        GoRouter.of(context,).push(appRouter.KBookDetailsView,extra:bookModel );
      },
      child: SizedBox(
        height: 140,
        child: Row(
          children: [
            CustomBookImage(
              image:
                  bookModel.volumeInfo.imageLinks?.thumbnail ??  'https://covers.openlibrary.org/b/id/10909258-L.jpg'
                   ,
            ),
            SizedBox(width: 15),
            Expanded(
              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width:
                        MediaQuery.of(context).size.width *
                        0.5,
                    child: Text(
                      bookModel.volumeInfo.title??'No Title',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Styles.textStyle20.copyWith(
                        fontFamily: KGtSectraFine,
                      ),
                    ),
                  ),
                  SizedBox(height: 3),
                  Text(
                    (bookModel.volumeInfo.authors?.isNotEmpty ?? false)
                        ? bookModel.volumeInfo.authors![0]
                        : 'Unknown Author',
                    style: Styles.textStyle14.copyWith(
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(height: 3),
                  Row(
                    children: [
                      Text(
                        ' Free',
                        style: Styles.textStyle20.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Spacer(),
                      BookRating(
                        mainAxisAlignment:
                            MainAxisAlignment.start,
                        rating: bookModel
                            .volumeInfo
                            .averageRating ??0 ,
                        count: bookModel
                            .volumeInfo
                            .ratingsCount ?? 0,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
