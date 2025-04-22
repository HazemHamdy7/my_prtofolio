import 'package:flutter/material.dart';
import 'package:my_prtofolio/constant/app_icon.dart';
import 'package:my_prtofolio/features/footer/widget/footer_link_item.dart';

class FooterLinks extends StatelessWidget {
  const FooterLinks({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FooterLinkItem(icon: AppIcons.github, onPressed: () {}),
        FooterLinkItem(icon: AppIcons.linkedIn, onPressed: () {}),
        FooterLinkItem(icon: AppIcons.facebook, onPressed: () {}),
        FooterLinkItem(icon: AppIcons.youtube, onPressed: () {}),
      ],
    );
  }
}
