import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:my_prtofolio/constants/assets.dart';
import 'package:my_prtofolio/helper/extensions.dart';
import 'package:my_prtofolio/shared/styled_card.dart';

class TestimonilItem extends StatelessWidget {
  const TestimonilItem({super.key});

  @override
  Widget build(BuildContext context) {
    return StyledCard(
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(
                width: 40,
                height: 40,

                child: CircleAvatar(
                  backgroundImage: Image.asset(Assets.imagesMe).image,
                ),
              ),
              Gap(16),

              Expanded(
                child: Text(
                  'Testimonil Title',
                  style: context.textStyle.bodyleLgBold.copyWith(
                    color: context.colorScheme.onBackground,
                  ),
                ),
              ),
            ],
          ),
          Gap(16),

          Text(
            'Testimonil Description   Testimonil Description Testimonil Description Testimonil Description  ',
            style: context.textStyle.bodyMdMedium.copyWith(
              color: context.colorScheme.onBackground,
            ),
          ),
        ],
      ),
    );
  }
}
