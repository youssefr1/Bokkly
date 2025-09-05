import 'package:bookly_app/core/widjets/custom_error_widjet.dart';
import 'package:bookly_app/core/widjets/custom_loading_indicator.dart';
import 'package:bookly_app/features/home/persentation/view_models/featured%20books/featured_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utilts/app_router.dart';
import 'custom_book_item.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
  builder: (context, state) {
    if (state is FeaturedBooksSuccess) {
      return SizedBox(
            height: MediaQuery.of(context).size.height * 0.28,
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {

                return Padding(
                  padding: const EdgeInsets.only(right: 10, bottom: 10),
                  child: GestureDetector(
                      onTap:(){
                        GoRouter.of(context,).push(appRouter.KBookDetailsView,extra:state.books[index] );

                      },
                      child: CustomBookImage(image: state.books[index].volumeInfo.imageLinks?.thumbnail??'https://covers.openlibrary.org/b/id/10909258-L.jpg')),
                );
              },
              itemCount:state.books.length ,
            ),
          );
    }else if(state is FeaturedBooksfailure){
 return CustomErrorWidjet(errorMessage: state.errMessage);

    }else{
      return CustomLoadingIndicator();
    }
  },
);
  }
}
