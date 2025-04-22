import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:my_prtofolio/features/home/presentation/appbar/widget/app_scafflod.dart';
import 'package:my_prtofolio/helper/extensions.dart';
import 'package:my_prtofolio/shared/seo_text.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScafflod(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: context.insets.padding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 100,
                  backgroundImage: NetworkImage(
                    'assets/images/me.jpg',
                    scale: 2.5,
                  ),
                ),
                Gap(16),
                SEOText(
                  context.texts.about_me,
                  style: context.textStyle.titleSimeBold,
                ),
                Gap(16),
                Text(
                  context.texts.about_me_subtitle,
                  style: context.textStyle.bodyLgMedium,
                ),
                Gap(35),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
