import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:my_prtofolio/helper/extensions.dart';
import 'package:my_prtofolio/helper/gap.dart';
import 'package:my_prtofolio/style/app_size.dart';
import 'package:my_prtofolio/widgets/seo_text.dart';
import 'package:seo_renderer/renderers/text_renderer/text_renderer_style.dart';

class HeroText extends StatelessWidget {
  const HeroText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:
          context.isDesktopOrTablet
              ? CrossAxisAlignment.start
              : CrossAxisAlignment.center,
      children: [
        SEOText(
          context.texts.ahmed_hamdy,
          textAlign:
              context.isDesktopOrTablet ? TextAlign.left : TextAlign.center,
          style: context.textStyle.titleLgBold.copyWith(
            color: context.colorScheme.onBackground,
          ),

          textRenderStyle: TextRendererStyle.header1,
        ),

        Gap(Insets.sm),

        SEOText(
          context.texts.ahmed_hamdy_desc,
          textAlign:
              context.isDesktopOrTablet ? TextAlign.left : TextAlign.center,
          style: context.textStyle.bodyMdMedium.copyWith(
            color: context.colorScheme.onBackground,
          ),
          textRenderStyle: TextRendererStyle.header2,
        ),

        Gap(Insets.xl),
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
