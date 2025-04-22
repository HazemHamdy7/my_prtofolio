import 'package:flutter/material.dart';
import 'package:my_prtofolio/features/appbar/widget/app_logo.dart';
import 'package:my_prtofolio/features/appbar/drawer/small_menus.dart';
import 'package:my_prtofolio/features/footer/my_footer.dart';
import 'package:my_prtofolio/features/footer/widget/footer_links.dart';

class MobileFooter extends StatelessWidget {
  const MobileFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const AppLogo(),
        //
        const SmallMenus(),
        const FooterLinks(),
      ],
    );
  }
}
