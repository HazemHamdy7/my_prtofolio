import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:my_prtofolio/features/home/presentation/experienes/model/experiences.dart';
import 'package:my_prtofolio/helper/extensions.dart';
import 'package:my_prtofolio/shared/seo_text.dart';

class ExperinceDescriptionItem extends StatelessWidget {
  final Experiences experiences;

  const ExperinceDescriptionItem({super.key, required this.experiences});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // This is the circle Dod in the left side of the item
        Container(
          width: 4,
          height: 4,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: context.colorScheme.onBackground,
          ),
        ),
        Gap(3),
        Expanded(
          child: SEOText(
            maxLines: 5,
            overflow: TextOverflow.ellipsis,
            experiences.description[Localizations.localeOf(
                  context,
                ).languageCode] ??
                experiences.description['en'] ??
                'Description',
            style: context.textStyle.bodyMdMedium.copyWith(
              color: context.colorScheme.onSurface,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    );
  }
}
