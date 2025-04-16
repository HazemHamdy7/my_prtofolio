import 'package:flutter/material.dart';
import 'package:my_prtofolio/extensions.dart';
import 'package:my_prtofolio/style/app_size.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: context.insets.appBarHeight,
      color: Colors.red,
      //Theme.of(context).appBarTheme.backgroundColor,
      padding: EdgeInsets.symmetric(horizontal: context.insets.padding),
      child: Row(
        children: [
          AppLogo(),
          Spacer(),
          AppMenus(),
          Spacer(),
          LanguageToggle(),
          ThemeToggle(),
        ],
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

class AppMenus extends StatelessWidget {
  const AppMenus({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(context.texts.home),
        Text(context.texts.courses),
        Text(context.texts.blog),
        Text(context.texts.about),
      ],
    );
  }
}

class LanguageToggle extends StatelessWidget {
  const LanguageToggle({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      itemBuilder:
          (context) => [
            PopupMenuItem(child: Text('Arabic')),
            PopupMenuItem(child: Text('English')),
            PopupMenuItem(child: Text('French')),
          ],
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
