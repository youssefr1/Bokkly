import 'package:flutter/cupertino.dart';

import '../../../../../core/utilts/assets.dart';

class SlidingImage extends StatelessWidget {
  const SlidingImage({super.key, required this.slidingAnimationImage});

  final Animation<Offset> slidingAnimationImage;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: slidingAnimationImage,
      builder: (BuildContext context, Widget? child) {
        return SlideTransition(
          position: slidingAnimationImage,
          child: Image.asset(AssetsData.logo),
        );
      },
    );
  }
}
