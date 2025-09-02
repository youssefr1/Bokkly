import 'package:flutter/material.dart';

import '../utilts/styles.dart';

class CustomErrorWidjet extends StatelessWidget {
  const CustomErrorWidjet({super.key, required this.errorMessage});
final String errorMessage;
  @override
  Widget build(BuildContext context) {
    return Text(errorMessage,style: Styles.textStyle20,);
  }
}
