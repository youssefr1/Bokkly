import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../core/utilts/assets.dart';
import 'Sliding_image.dart';
import 'Sliding_text.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimationText;
  late Animation<Offset> slidingAnimationImage;

  @override
  void initState() {
    animationController = AnimationController(
        vsync: this,
        duration: const Duration(milliseconds: 1400)
    );
    animationController.forward();
    super.initState();

    slidingAnimationText = Tween<Offset>(
        begin: const Offset(0, 18),
        end: Offset.zero
    ).animate(animationController);

    slidingAnimationImage = Tween<Offset>(
        begin: const Offset(0, -12),
        end: Offset.zero
    ).animate(animationController);

    slidingAnimationText.addListener(() {
      setState(() {});
    });
    slidingAnimationImage.addListener(() {
      setState(() {});
    });
  }
  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SlidingImage(slidingAnimationImage: slidingAnimationImage),
        const SizedBox(height: 16,),
        Center(
          child: SlidingText(slidingAnimationText: slidingAnimationText),
        ),
      ],
    );
  }
}



