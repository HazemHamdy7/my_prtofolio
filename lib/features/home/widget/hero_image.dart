import 'package:flutter/material.dart';
import 'package:my_prtofolio/constants/assets.dart';

class HeroImage extends StatelessWidget {
  const HeroImage({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 0.6,
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(250)),
        child: Image.asset(Assets.imagesMe, fit: BoxFit.cover),
      ),
    );
  }
}
