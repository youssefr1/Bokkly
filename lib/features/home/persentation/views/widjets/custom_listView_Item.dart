import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utilts/assets.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.28,
      child: AspectRatio(
        aspectRatio: 2.7/4,
        child: Container(
          width: 100,
         height: MediaQuery.of(context).size.height * 0.26,
         decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(16),
           image: DecorationImage(
             fit: BoxFit.fill,
               image: AssetImage(AssetsData.testImage))
         ),

        ),
      ),
    );
  }
}
