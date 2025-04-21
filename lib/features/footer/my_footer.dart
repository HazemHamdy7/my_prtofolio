import 'package:flutter/material.dart';
import 'package:my_prtofolio/features/appbar/widget/app_logo.dart';
import 'package:my_prtofolio/features/appbar/widget/drawer/large_menus.dart';
import 'package:my_prtofolio/features/appbar/widget/drawer/small_menus.dart';
import 'package:my_prtofolio/features/footer/widget/desktop_footer.dart';
import 'package:my_prtofolio/features/footer/widget/mobile_footer.dart';
import 'package:my_prtofolio/helper/extensions.dart';

class MyFooter extends StatelessWidget {
  const MyFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.theme.appBarTheme.backgroundColor,
      padding: EdgeInsets.all(context.insets.padding),
      child: Column(
        children: [
          context.isDesktop ? const DesktopFooter() : const MobileFooter(),
          Divider(color: context.theme.dividerColor, height: 24),
          Text(
            "© ${DateTime.now().year} All rights reserved. ",
            style: context.textStyle.bodyMdMedium.copyWith(
              color: Colors.grey[400],
            ),
          ),
        ],
      ),
    );
  }
}
