import 'package:bookly_app/features/home/persentation/views/widjets/custom_book_item.dart';
import 'package:flutter/material.dart';

class SimilarBookListView extends StatelessWidget {
  const SimilarBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.18,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 10, top: 15, left: 12),
            child: CustomBookImage(image:'https://covers.openlibrary.org/b/id/10909258-L.jpg')
          );
        },
      ),
    );
  }
}
