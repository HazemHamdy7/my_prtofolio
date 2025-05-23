import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_prtofolio/constant/app_icon.dart';
import 'package:my_prtofolio/helper/extensions.dart';
import 'package:my_prtofolio/shared/appbar/cubit/toogle_language_cubit.dart';
import 'package:my_prtofolio/helper/gap.dart';
import 'package:my_prtofolio/shared/seo_text.dart';
 
class LanguageSwitch extends StatelessWidget {
  const LanguageSwitch({super.key});

  @override
  Widget build(BuildContext context) {
    final currentLocale = Localizations.localeOf(context).languageCode;
    return PopupMenuButton(
      itemBuilder:
          (context) => [
            PopupMenuItem(
              value: 0,
              child: PopupLanguageSwitchItem(
                language: 'English',
                icons: AppIcons.us,
              ),
            ),
            PopupMenuItem(
              value: 1,
              child: PopupLanguageSwitchItem(
                language: 'عربى',
                icons: AppIcons.ar,
              ),
            ),
          ],
      onSelected: (value) {
        // Change language using LocaleCubit
        final localeCubit = context.read<LocaleCubit>();
        if (value == 0) {
          localeCubit.changeLanguage('en');
        } else if (value == 1) {
          localeCubit.changeLanguage('ar');
        }
      },
      child: Row(
        children: [
          Icon(Icons.language, color: context.colorScheme.onSurface),
          gapH(4),
          SEOText(currentLocale == 'en' ? 'En' : 'عربى'),
        ],
      ),
    );
  }
}

class PopupLanguageSwitchItem extends StatelessWidget {
  const PopupLanguageSwitchItem({
    super.key,
    required this.language,
    required this.icons,
  });
  final String language;
  final String icons;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(icons, width: 18, height: 18),
        gapW(10),

        SEOText(language),
      ],
    );
  }
}
