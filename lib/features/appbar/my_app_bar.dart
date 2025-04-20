import 'package:flutter/material.dart';
import 'package:my_prtofolio/features/appbar/widget/drawer/drawer_menu.dart';
import 'package:my_prtofolio/helper/extensions.dart';
import 'package:my_prtofolio/features/appbar/widget/app_logo.dart';
import 'package:my_prtofolio/features/appbar/widget/drawer/large_menus.dart';
import 'package:my_prtofolio/features/appbar/widget/theme_toggle.dart';
import 'package:my_prtofolio/style/app_size.dart';
import 'package:my_prtofolio/features/appbar/widget/drawer/app_bar_drawer_icon.dart';
import 'package:my_prtofolio/features/appbar/widget/language_switch.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          child: Container(
            alignment: Alignment.center,
            height: context.insets.appBarHeight,
            color: context.theme.appBarTheme.backgroundColor,
            padding: EdgeInsets.symmetric(horizontal: context.insets.padding),
            child: ConstrainedBox(
              constraints: BoxConstraints(maxWidth: Insets.maxWidth),
              child: Row(
                children: [
                  AppLogo(),
                  Spacer(),
                  if (context.isDesktop) LargeMenus(),
                  Spacer(),
                  LanguageSwitch(),
                  ThemeToggle(),

                  if (context.isMobile || context.isTablet) AppBarDrawerIcon(),
                ],
              ),
            ),
          ),
        ),

        if (!context.isDesktop) DrawerMenu(),
      ],
    );
  }
}
