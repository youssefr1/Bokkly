import 'package:bookly_app/core/widjets/custom_error_widjet.dart';
import 'package:bookly_app/core/widjets/custom_loading_indicator.dart';
import 'package:bookly_app/features/home/persentation/view_models/newset%20books/newset_books_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'BestSellerItem.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsetBooksCubit, NewsetBooksState>(
      builder: (context, state) {
        if (state is NewsetBooksSuccess) {
          return ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    padding: EdgeInsets.zero,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child:  BookListViewItem(bookModel: state.books[index],),
                      );
                    },
                    itemCount: state.books.length,
                  );
        }
        else if (state is NewsetBooksfailure) {
          return CustomErrorWidjet(errorMessage: state.errMessage);

        }else{
          return const Center(child: CustomLoadingIndicator(),);
        }
      },
    );
  }
}
