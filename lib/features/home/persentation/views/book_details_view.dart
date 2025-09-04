import 'package:bookly_app/features/home/persentation/views/widjets/book_details_veiw_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/models/book_model/book_model.dart';
import '../view_models/similar books/similar_books_cubit.dart';

class BookDetailsView extends StatefulWidget {
  const BookDetailsView({super.key, required this.bookModel});
final BookModel bookModel;
  @override
  State<BookDetailsView> createState() => _BookDetailsViewState();
}

class _BookDetailsViewState extends State<BookDetailsView> {
  @override
  void initState() {
    BlocProvider.of<SimilarBooksCubit>(context).featchSimilarBooks(category: widget.bookModel.volumeInfo.categories![0]);
    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: BookDetailsVeiwBody()));
  }
}
