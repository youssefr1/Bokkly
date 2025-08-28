import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'custom_book_details_app_bar.dart';

class BookDetailsVeiwBody extends StatelessWidget {
  const BookDetailsVeiwBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomBookDetailsAppBar()
        ]
    );
  }
}
