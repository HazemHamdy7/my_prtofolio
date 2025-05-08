import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:my_prtofolio/shared/appbar/widget/app_scafflod.dart';
import 'package:my_prtofolio/helper/extensions.dart';
import 'package:my_prtofolio/helper/font_size_responsive.dart';
import 'package:my_prtofolio/shared/seo_text.dart';
import 'package:my_prtofolio/shared/style/app_colors.dart';

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
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: context.texts.about,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: getResponsiveFontSize(
                            context,
                            fontSize: 24,
                          ),
                          fontWeight: FontWeight.w600,
                        ),
                      ),

                      TextSpan(
                        text: context.texts.me,
                        style: TextStyle(
                          color: AppColors.primaryColor,
                          fontSize: getResponsiveFontSize(
                            context,
                            fontSize: 24,
                          ),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                Gap(16),

                CircleAvatar(
                  radius: 100,
                  backgroundImage: NetworkImage(
                    'assets/images/me.jpg',
                    scale: 2.5,
                  ),
                ),

                Gap(16),
                SEOText(
                  "My Services",
                  style: TextStyle(
                    color: AppColors.primaryColor,
                    fontSize: getResponsiveFontSize(context, fontSize: 24),
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                Gap(16),
                Text(
                  context.texts.about_me_subtitle2,
                  style: context.textStyle.bodyLgMedium,
                  textAlign: TextAlign.center,
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
