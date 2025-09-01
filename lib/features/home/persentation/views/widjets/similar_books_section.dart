import 'package:bookly_app/features/home/persentation/views/widjets/similar_books_list_view.dart';
import 'package:flutter/cupertino.dart';

import '../../../../../core/utilts/styles.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'You can also like ',
          style: Styles.textStyle16.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
        SimilarBookListView(),
      ],
    );
  }
}