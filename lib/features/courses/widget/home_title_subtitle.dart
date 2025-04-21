import 'package:flutter/widgets.dart';
import 'package:my_prtofolio/helper/extensions.dart';
import 'package:my_prtofolio/shared/seo_text.dart';
import 'package:seo_renderer/renderers/text_renderer/text_renderer_style.dart';

class HomeTitleSubtitle extends StatelessWidget {
  const HomeTitleSubtitle({
    super.key,
    required this.title,
    required this.subtitle,
  });
  final String title;
  final String subtitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: context.insets.padding),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SEOText(
            title,
            style: context.textStyle.titleSimeBold.copyWith(
              color: context.colorScheme.onBackground,
            ),
            textRenderStyle: TextRendererStyle.header3,
          ),

          SEOText(
            subtitle,
            style: context.textStyle.bodyMdMedium.copyWith(
              color: context.colorScheme.onBackground,
            ),
            textRenderStyle: TextRendererStyle.header4,
          ),
        ],
      ),
    );
  }
}
