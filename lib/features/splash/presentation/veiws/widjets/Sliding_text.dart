import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class SlidingText extends StatelessWidget {
  const SlidingText({
    super.key,
    required this.slidingAnimationText,
  });

  final Animation<Offset> slidingAnimationText;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: slidingAnimationText,
      builder: (BuildContext context, _) {
        return SlideTransition(
          position: slidingAnimationText,
          child: Text(
            'Read Free Books',
            style: GoogleFonts.lora(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        );},
    );
  }
}