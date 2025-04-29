import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:my_prtofolio/features/home/presentation/appbar/widget/app_scafflod.dart';
import 'package:my_prtofolio/helper/extensions.dart';
import 'package:my_prtofolio/shared/seo_text.dart';
import 'package:seo_renderer/renderers/text_renderer/text_renderer_style.dart';

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
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),

                      TextSpan(
                        text: context.texts.me,
                        style: TextStyle(
                          color: const Color.fromARGB(255, 9, 218, 197),
                          fontSize: 20,
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
                // SEOText(
                //   context.texts.ahmed_hamdy_desc,
                //   style: context.textStyle.titleSimeBold,
                //   textRenderStyle: TextRendererStyle.header1,
                // ),
                Gap(16),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: context.texts.my,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),

                      TextSpan(
                        text: ' ${context.texts.services}',
                        style: TextStyle(
                          color: const Color.fromARGB(255, 9, 218, 197),
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
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
