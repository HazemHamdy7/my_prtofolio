import 'package:flutter/material.dart';
import 'package:my_prtofolio/extensions.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AppLogo(),
        Spacer(),
        AppMenus(),
        Spacer(),
        LanguageToggle(),
        ThemeToggle(),
      ],
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
      spacing: 10,
      children: [
        Text(
          AppLocalizations.of(context)!.home,
          style: context.textStyle.titleMdMedium,
        ),
        Text(
          AppLocalizations.of(context)!.about_me,
          style: context.textStyle.titleMdMedium,
        ),
        Text(
          AppLocalizations.of(context)!.courses,
          style: context.textStyle.titleMdMedium,
        ),
        Text(
          AppLocalizations.of(context)!.blog,
          style: context.textStyle.titleMdMedium,
        ),
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
