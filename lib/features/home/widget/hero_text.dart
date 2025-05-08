import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:my_prtofolio/helper/extensions.dart';
import 'package:my_prtofolio/shared/style/app_colors.dart';
import 'package:my_prtofolio/shared/style/app_size.dart';
import 'package:my_prtofolio/shared/seo_text.dart';
import 'package:seo_renderer/renderers/text_renderer/text_renderer_style.dart';

class HeroText extends StatelessWidget {
  List<MaterialColor> colorizeColors = [
    Colors.purple,
    Colors.blue,
    Colors.purple,
  ];

  HeroText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:
          context.isDesktopOrTablet
              ? CrossAxisAlignment.start
              : CrossAxisAlignment.center,
      children: [
        DefaultTextStyle(
          style: context.textStyle.titleLgBold.copyWith(
            color: context.colorScheme.primary,
          ),
          child: AnimatedTextKit(
            totalRepeatCount: 1,
            animatedTexts: [WavyAnimatedText(context.texts.ahmed_hamdy)],
          ),
        ),

        // SEOText(
        //   context.texts.ahmed_hamdy,
        //   textAlign:
        //       context.isDesktopOrTablet ? TextAlign.left : TextAlign.center,
        //   style: context.textStyle.titleLgBold.copyWith(
        //     color: context.colorScheme.onBackground,
        //   ),

        //   textRenderStyle: TextRendererStyle.header1,
        // ),
        Gap(Insets.lg),

        SizedBox(
          child: AnimatedTextKit(
            animatedTexts: [
              ColorizeAnimatedText(
                context.texts.ahmed_hamdy_desc,
                textStyle: context.textStyle.bodyMdMedium.copyWith(
                  color: context.colorScheme.onBackground,
                ),

                colors: colorizeColors,
              ),
            ],
            isRepeatingAnimation: true,
            repeatForever: true,
          ),
        ),

        // SEOText(
        //   context.texts.ahmed_hamdy_desc,
        //   textAlign:
        //       context.isDesktopOrTablet ? TextAlign.left : TextAlign.center,
        //   style: context.textStyle.bodyMdMedium.copyWith(
        //     color: context.colorScheme.onBackground,
        //   ),
        //   textRenderStyle: TextRendererStyle.header2,
        // ),
        Gap(Insets.lg),
        SEOText(
          context.texts.ahmed_hamdy_desc_2,
          textAlign:
              context.isDesktopOrTablet ? TextAlign.left : TextAlign.center,
          style: context.textStyle.bodyMdMedium.copyWith(
            color: context.colorScheme.onSurface,
          ),
          textRenderStyle: TextRendererStyle.header3,
        ),
      ],
    );
  }
}
