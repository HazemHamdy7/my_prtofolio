import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:my_prtofolio/features/appbar/widget/powered_by_flutter.dart';
import 'package:my_prtofolio/features/home/widget/hero_buttons.dart';
import 'package:my_prtofolio/features/home/widget/hero_image.dart';
import 'package:my_prtofolio/features/home/widget/hero_text.dart';
import 'package:my_prtofolio/helper/extensions.dart';
import 'package:my_prtofolio/helper/gap.dart';
import 'package:my_prtofolio/style/app_size.dart';

class HeroWidget extends StatelessWidget {
  const HeroWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        context.isDesktop || context.isTablet
            ? const _LargeHero()
            : const _SmallHero(),
      ],
    );
  }
}

class _SmallHero extends StatelessWidget {
  const _SmallHero();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 140),
          child: HeroImage(),
        ),

        gapH(Insets.lg),
        HeroText(),
        gapH(Insets.lg),
        const SmallHeroButton(),
      ],
    );
  }
}

class _LargeHero extends StatelessWidget {
  const _LargeHero();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: const HeroImage()),
        Gap(Insets.xxxl),
        Expanded(
          flex: 2,
          child: Column(
            children: [
              const HeroText(),
              Gap(Insets.xxl),
              const LargeHeroButtons(),
            ],
          ),
        ),
      ],
    );
  }
}
