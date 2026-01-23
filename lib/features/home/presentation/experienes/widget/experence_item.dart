import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:my_prtofolio/features/home/presentation/experienes/model/experiences.dart';
import 'package:my_prtofolio/features/home/presentation/experienes/widget/experince_description_item.dart';
import 'package:my_prtofolio/helper/extensions.dart';
import 'package:my_prtofolio/helper/font_size_responsive.dart';
import 'package:my_prtofolio/shared/styled_card.dart';

class ExperenceItem extends StatelessWidget {
  final Experiences experiences;
  const ExperenceItem({super.key, required this.experiences});

  @override
  Widget build(BuildContext context) {
    return StyledCard(
      width: 330,
      height: 230,
      borderEffect: true,
      child: Card(
        child: Column(
          children: [
            Text(
              experiences.title[Localizations.localeOf(context).languageCode] ??
                  experiences.title['en'] ??
                  'Title',
              style: context.textStyle.bodyleLgBold.copyWith(
                color: context.colorScheme.primary,
                fontSize: getResponsiveFontSize(context, fontSize: 15),
              ),
            ),
            Gap(10),
            Expanded(
              child: Column(
                children: [ExperinceDescriptionItem(experiences: experiences)],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
