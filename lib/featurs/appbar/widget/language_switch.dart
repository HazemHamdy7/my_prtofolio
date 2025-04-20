import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_prtofolio/constant/app_icon.dart';
import 'package:my_prtofolio/helper/extensions.dart';
import 'package:my_prtofolio/featurs/appbar/cubit/toogle_language_cubit.dart';
import 'package:my_prtofolio/helper/gap.dart';
import 'package:my_prtofolio/widgets/seo_text.dart';
import 'package:svg_flutter/svg_flutter.dart';

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
        SvgPicture.asset(icons, width: 60, height: 18),
        gapH(10),

        SEOText(language),
      ],
    );
  }
}
