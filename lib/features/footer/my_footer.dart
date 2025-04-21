import 'package:flutter/material.dart';
import 'package:my_prtofolio/constant/app_icon.dart';
import 'package:my_prtofolio/features/appbar/widget/powered_by_flutter.dart';
import 'package:my_prtofolio/features/footer/widget/desktop_footer.dart';
import 'package:my_prtofolio/features/footer/widget/mobile_footer.dart';
import 'package:my_prtofolio/helper/extensions.dart';
import 'package:svg_flutter/svg_flutter.dart';

class MyFooter extends StatelessWidget {
  const MyFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.theme.appBarTheme.backgroundColor,
      padding: EdgeInsets.all(context.insets.padding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          context.isDesktop ? const DesktopFooter() : const MobileFooter(),
          Divider(color: context.theme.dividerColor, height: 24),

          PoweredByFlutter(),
        ],
      ),
    );
  }
}

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

class FooterLinkItem extends StatelessWidget {
  const FooterLinkItem({
    super.key,
    required this.icon,
    required this.onPressed,
  });
  final String icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: SvgPicture.asset(
        icon,
        colorFilter: ColorFilter.mode(
          context.colorScheme.onBackground,
          BlendMode.srcIn,
        ),
      ),
    );
  }
}
