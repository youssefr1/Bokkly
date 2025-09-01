import 'package:flutter/material.dart';

import '../widjets/search_veiw_body.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: SafeArea(child:SearchVeiwBody() ),
    );
  }
}
