import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:my_prtofolio/helper/extensions.dart';
import 'package:my_prtofolio/shared/style/app_size.dart';
import 'package:my_prtofolio/shared/seo_text.dart';
import 'package:seo_renderer/renderers/text_renderer/text_renderer_style.dart';

// ignore: must_be_immutable
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

        Gap(Insets.lg),

        SizedBox(
          child: AnimatedTextKit(
            animatedTexts: [
              ColorizeAnimatedText(
                context.texts.ahmed_hamdy_desc,
                textStyle: context.textStyle.bodyMdMedium.copyWith(
                  color: context.colorScheme.onSurface,
                ),

                colors: colorizeColors,
              ),
            ],
            isRepeatingAnimation: true,
            repeatForever: true,
          ),
        ),

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
