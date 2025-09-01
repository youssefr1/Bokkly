import 'package:bookly_app/core/utilts/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../constants.dart';
import '../../../../../core/utilts/assets.dart';
import '../../../../../core/utilts/styles.dart';
import 'BestSeller_rating.dart';
import 'home_view_body.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        GoRouter.of(context).push(appRouter.KBookDetailsView);
      },
      child: SizedBox(
        height: 140,
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 2.7 / 4,
              child: Container(
                width: 100,
                height: MediaQuery.of(context).size.height * 0.26,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(AssetsData.testImage),
                  ),
                ),
              ),
            ),
            SizedBox(width: 15),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Text(
                      'Harry Potter and the Goblet of Fire',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Styles.textStyle20.copyWith(
                        fontFamily: KGtSectraFine,
                      ),
                    ),
                  ),
                  SizedBox(height: 3),
                  Text(
                    'J.K. Rowling',
                    style: Styles.textStyle14.copyWith(color: Colors.grey),
                  ),
                  SizedBox(height: 3),
                  Row(
                    children: [
                      Text(
                        '19.99 €',
                        style: Styles.textStyle20.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Spacer(),
                      BookRating(mainAxisAlignment: MainAxisAlignment.start),
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
