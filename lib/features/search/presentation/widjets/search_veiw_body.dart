import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'custom_search_textfeild.dart';

class SearchVeiwBody extends StatelessWidget {
  const SearchVeiwBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          CustomSearchTextFeild(),
        ],
      ),
    );
  }
}

