import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:my_prtofolio/features/home/widget/style_button.dart';
import 'package:my_prtofolio/helper/extensions.dart';
import 'package:my_prtofolio/style/app_size.dart';

class LargeHeroButtons extends StatelessWidget {
  const LargeHeroButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        PrimaryButton(title: context.texts.courses),
        Gap(Insets.sm),
        OutLineButton(title: context.texts.contact_me),
      ],
    );
  }
}

class SmallHeroButton extends StatelessWidget {
  const SmallHeroButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: PrimaryButton(title: context.texts.courses),
        ),
        Gap(Insets.xl),

        SizedBox(
          width: double.infinity,
          child: OutLineButton(title: context.texts.contact_me),
        ),
      ],
    );
  }
}
