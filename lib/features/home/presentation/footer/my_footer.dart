import 'package:flutter/material.dart';
import 'package:my_prtofolio/features/home/presentation/appbar/widget/powered_by_flutter.dart';
import 'package:my_prtofolio/features/home/presentation/footer/widget/desktop_footer.dart';
import 'package:my_prtofolio/features/home/presentation/footer/widget/mobile_footer.dart';
import 'package:my_prtofolio/helper/extensions.dart';

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
