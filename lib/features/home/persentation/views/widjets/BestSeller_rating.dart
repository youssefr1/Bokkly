import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utilts/styles.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key, required this.mainAxisAlignment, required this.rating, required this.count});
  final MainAxisAlignment mainAxisAlignment;
  final int rating;
  final int count;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(FontAwesomeIcons.solidStar, color: Colors.yellow, size: 14),
        SizedBox(width: 6.3),
        Text(rating.toString(), style: Styles.textStyle16),
        SizedBox(width: 5),
        Opacity(opacity: 0.5, child: Text("(${count.toString()})", style: Styles.textStyle14)),
      ],
    );
  }
}
