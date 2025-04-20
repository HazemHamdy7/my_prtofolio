import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:my_prtofolio/helper/extensions.dart';

class ExperinceDescriptionItem extends StatelessWidget {
  const ExperinceDescriptionItem({super.key});

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
          child: Text(
            'Experience Description',
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
