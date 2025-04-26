import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:my_prtofolio/features/courses/model/course.dart';
import 'package:my_prtofolio/helper/extensions.dart';
import 'package:my_prtofolio/shared/seo_text.dart';
import 'package:my_prtofolio/shared/styled_card.dart';
import 'package:seo_renderer/renderers/text_renderer/text_renderer_style.dart';

class CoursesItem extends StatelessWidget {
  final Course course;
  const CoursesItem({super.key, required this.course});

  @override
  Widget build(BuildContext context) {
    return StyledCard(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: AspectRatio(
          aspectRatio: 0.7,
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 1.5,
                child: ClipRRect(
                  child: Image.network(
                    course.imageUrl,
                    loadingBuilder: (context, child, loadingProgress) {
                      if (loadingProgress == null) return child;
                      return const Center(child: CircularProgressIndicator());
                    },
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Gap(24),
              SEOText(
                course.name,
                style: context.textStyle.bodyleLgBold.copyWith(
                  color: context.colorScheme.onBackground,
                ),
                textRenderStyle: TextRendererStyle.header4,
              ),
              Gap(8),
              Expanded(
                child: SEOText(
                  //  Localizations.localeOf(context).languageCode == 'en'
                  course.description['en'] ?? 'No description available',
                  style: context.textStyle.bodyMdMedium.copyWith(
                    color: context.colorScheme.onSurface,
                  ),
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
