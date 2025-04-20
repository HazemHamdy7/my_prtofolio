import 'package:flutter/material.dart';
import 'package:my_prtofolio/app_text_styles.dart';
import 'package:my_prtofolio/constant/app_menu_list.dart';
import 'package:my_prtofolio/constant/extensions.dart';
import 'package:my_prtofolio/style/app_size.dart';
import 'package:my_prtofolio/featurs/appbar/widget/app_bar_drawer_icon.dart';
import 'package:my_prtofolio/featurs/appbar/widget/language_switch.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
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
              LanguageSiwtch(),
              ThemeToggle(),

              if (context.isMobile || context.isTablet) AppBarDrawerIcon(),
            ],
          ),
        ),
      ),
    );
  }
}

class AppLogo extends StatelessWidget {
  const AppLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Text('Portfolio', style: context.textStyle.titleLgBold);
  }
}

class LargeMenus extends StatelessWidget {
  const LargeMenus({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children:
          AppMenuList.getItem(context)
              .map(
                (AppMenu e) => LargeAppBarMenuItem(
                  text: e.title,
                  isSelected: true,
                  onTap: () {},
                ),
              )
              .toList(),
    );
  }
}

class LargeAppBarMenuItem extends StatelessWidget {
  const LargeAppBarMenuItem({
    super.key,
    required this.text,
    required this.isSelected,
    required this.onTap,
  });
  final String text;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: Insets.med,
          vertical: Insets.xs,
        ),
        child: Text(text, style: SmallTextStyles().bodyLgMedium),
      ),
    );
  }
}

class ThemeToggle extends StatelessWidget {
  const ThemeToggle({super.key});

  @override
  Widget build(BuildContext context) {
    return Switch(value: false, onChanged: (value) {});
  }
}
