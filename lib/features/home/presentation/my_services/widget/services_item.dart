import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:my_prtofolio/constants/assets.dart';
import 'package:my_prtofolio/features/home/presentation/my_services/widget/custom_card_services.dart';
import 'package:my_prtofolio/helper/extensions.dart';

class ServicesItem extends StatelessWidget {
  const ServicesItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(context.insets.padding),
      child: Row(
        children: [
          Expanded(
            child: CustomCardServices(
              title: "Web Development",
              description:
                  "I am a web developer with experience in building modern and responsive websites.web developer with experience in building modern and responsive websites. ",
              imageUrl: Assets.imagesCode2,
              buttonTitle: "See More",
            ),
          ),
          Gap(16),
          Expanded(
            child: CustomCardServices(
              title: "Web Development",
              description:
                  "I am a web developer with experience in building modern and responsive websites.web developer with experience in building modern and responsive websites. ",
              imageUrl: Assets.imagesProgramming,
              buttonTitle: "See More",
            ),
          ),
          Gap(16),
          Expanded(
            child: CustomCardServices(
              title: "Web Development",
              description:
                  "I am a web developer with experience in building modern and responsive websites.web developer with experience in building modern and responsive websites. ",
              imageUrl: Assets.imagesComputer,
              buttonTitle: "See More",
            ),
          ),
        ],
      ),
    );
  }
}
