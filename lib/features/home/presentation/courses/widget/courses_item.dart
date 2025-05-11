import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:my_prtofolio/constant/app_icon.dart';
import 'package:my_prtofolio/features/home/presentation/courses/model/course.dart';
import 'package:my_prtofolio/helper/extensions.dart';
import 'package:my_prtofolio/shared/seo_text.dart';
import 'package:seo_renderer/renderers/text_renderer/text_renderer_style.dart';

class CoursesItem extends StatelessWidget {
  final Course course;
  const CoursesItem({super.key, required this.course});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.go('/courses/${course.link}');
      },
      child: Card(
        borderOnForeground: true,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        elevation: 10,
        shadowColor: Colors.blue.withValues(alpha: 0.9),
        color: context.colorScheme.onSurface,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: AspectRatio(
            aspectRatio: context.isDesktop ? 0.7 : 0.9,
            child: Column(
              children: [
                AspectRatio(
                  aspectRatio: 1.9,
                  child: ClipRRect(child: Image.asset(AppIcons.me)),
                ),
                Gap(24),
                SEOText(
                  course.name,
                  style: context.textStyle.bodyleLgBold.copyWith(
                    color: context.colorScheme.onSurface,
                  ),
                  textRenderStyle: TextRendererStyle.header4,
                ),
                Gap(8),
                Expanded(
                  child: SEOText(
                    course.description[Localizations.localeOf(
                          context,
                        ).languageCode] ??
                        course.description['en'] ??
                        '',
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
      ),
    );
  }
}
