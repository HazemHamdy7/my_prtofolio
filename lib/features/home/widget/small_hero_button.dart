import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:my_prtofolio/features/home/widget/style_button.dart';
import 'package:my_prtofolio/helper/extensions.dart';
import 'package:my_prtofolio/shared/style/app_size.dart';

class SmallHeroButton extends StatelessWidget {
  const SmallHeroButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: 350),
      child: Column(
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
      ),
    );
  }
}
