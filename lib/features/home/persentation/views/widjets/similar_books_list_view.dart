import 'package:bookly_app/core/widjets/custom_error_widjet.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/persentation/views/widjets/custom_book_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../view_models/similar books/similar_books_cubit.dart';

class SimilarBookListView extends StatelessWidget {
  const SimilarBookListView({super.key, });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
  builder: (context, state) {
    if (state is SimilarBooksSuccess) {
      return SizedBox(
            height: MediaQuery.of(context).size.height * 0.18,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 10, top: 15, left: 12),
                  child: CustomBookImage(image:state.books[index].volumeInfo.imageLinks?.thumbnail??'https://covers.openlibrary.org/b/id/10909258-L.jpg' )
                );
              },
            ),
          );
    }else if(state is SimilarBooksFailure){
      return CustomErrorWidjet(errorMessage: state.errMessage);
    }else{
      return const CircularProgressIndicator();
    }

  },
);
  }
}
