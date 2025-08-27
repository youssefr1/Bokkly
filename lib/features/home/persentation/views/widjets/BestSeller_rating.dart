import 'package:flutter/material.dart';

import '../../../../../core/utilts/styles.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.star,
          color: Colors.yellow,
        ),
        SizedBox(width: 6.3,),
        Text('4.8',style: Styles.textStyle16,),
        SizedBox(width: 5,),
        Text('(2045)',style: Styles.textStyle14.copyWith(color: Colors.grey),)
      ],
    );
  }
}