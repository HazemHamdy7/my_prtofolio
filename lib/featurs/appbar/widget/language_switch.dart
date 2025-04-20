import 'package:flutter/material.dart';
import 'package:my_prtofolio/constant/app_icon.dart';
import 'package:my_prtofolio/constant/extensions.dart';
import 'package:my_prtofolio/helper/gap.dart';
import 'package:my_prtofolio/widgets/seo_text.dart';
import 'package:svg_flutter/svg_flutter.dart';

class LanguageSiwtch extends StatelessWidget {
  const LanguageSiwtch({super.key});

  @override
  Widget build(BuildContext context) {
    final test = Localizations.localeOf(context).languageCode;
    return PopupMenuButton(
      itemBuilder:
          (context) => [
            PopupMenuItem(
              value: 0,
              child: PopupLanguageSwitchItem(
                language: 'English',
                icons: AppIcon.us,
              ),
            ),
            PopupMenuItem(
              value: 1,
              child: PopupLanguageSwitchItem(
                language: 'عربى',
                icons: AppIcon.ar,
              ),
            ),
          ],
      onSelected: (value) {},
      child: Row(
        children: [
          Icon(Icons.language, color: context.colorScheme.onSurface),
          gapH(4),
          SEOText(test == 'en' ? 'En' : 'عربى'),
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
        SvgPicture.asset(icons, width: 18, height: 18),
        gapH(10),

        SEOText(language),
      ],
    );
  }
}
