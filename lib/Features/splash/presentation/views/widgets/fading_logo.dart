import 'package:black_market/Core/utils/assets.dart';
import 'package:flutter/material.dart';

class FadingLogo extends StatelessWidget {
  const FadingLogo({
    super.key,
    required this.opacityAnimation,
  });

  final Animation<double> opacityAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: opacityAnimation,
      builder: (context, _) {
        return Opacity(
          opacity: opacityAnimation.value,
          child: const Image(
            image: AssetImage(AssetsData.splashLogo2),
            width: 279,
            height: 279,
          ),
        );
      },
    );
  }
}
