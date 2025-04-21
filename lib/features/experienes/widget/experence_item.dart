import 'package:flutter/material.dart';
import 'package:my_prtofolio/features/experienes/widget/experince_description_item.dart';
import 'package:my_prtofolio/helper/extensions.dart';
import 'package:my_prtofolio/shared/styled_card.dart';

class ExperenceItem extends StatelessWidget {
  const ExperenceItem({super.key});

  @override
  Widget build(BuildContext context) {
    return StyledCard(
      width: 300,
      height: 230,
      borderEffect: true,
      child: Card(
        child: Column(
          children: [
            Text(
              'Experience Title',
              style: context.textStyle.bodyleLgBold.copyWith(
                color: context.colorScheme.onBackground,
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  const ExperinceDescriptionItem(),
                  const ExperinceDescriptionItem(),
                  const ExperinceDescriptionItem(),
                  const ExperinceDescriptionItem(),
                  const ExperinceDescriptionItem(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
