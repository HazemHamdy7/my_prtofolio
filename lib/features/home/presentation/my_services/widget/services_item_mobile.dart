import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:my_prtofolio/constants/assets.dart';
import 'package:my_prtofolio/features/home/presentation/my_services/widget/custom_card_services.dart';

class ServicesItemMobile extends StatelessWidget {
  const ServicesItemMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(10),
        child: ConstrainedBox(
          constraints: BoxConstraints(maxHeight: 920, maxWidth: 400),

          child: Column(
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
                      "I am a web developer with experience in building modern and responsive websites. web developer with experience in building modern and responsive websites.   ",
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
        ),
      ),
    );
  }
}
