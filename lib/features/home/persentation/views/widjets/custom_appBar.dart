import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utilts/app_router.dart';
import '../../../../../core/utilts/assets.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 38, bottom: 20),
      child: Row(
        children: [
          Image.asset(AssetsData.logo, width: 80, height: 30),
          Spacer(),
          IconButton(
            onPressed: () {
              GoRouter.of(context).push(appRouter.KSearchView);
            },
            icon: Icon(FontAwesomeIcons.magnifyingGlass, size: 22),
          ),
        ],
      ),
    );
  }
}
