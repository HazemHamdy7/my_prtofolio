import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:my_prtofolio/features/home/presentation/courses/model/course.dart';
import 'package:my_prtofolio/helper/extensions.dart';
import 'package:my_prtofolio/helper/url_launcher.dart';
import 'package:my_prtofolio/shared/seo_text.dart';
import 'package:seo_renderer/renderers/text_renderer/text_renderer_style.dart';

class CoursesItem extends StatelessWidget {
  final Course course;
  const CoursesItem({super.key, required this.course});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        openUrlOnTap(context: context, url: course.link);
      },
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        elevation: 10,
        shadowColor: Theme.of(context).shadowColor,
        color: Theme.of(context).cardColor,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: AspectRatio(
            aspectRatio: context.isDesktop ? 0.7 : 0.9,
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: SizedBox(
                    height: 150,
                    width: double.infinity,
                    child: Image.network(
                      course.imageUrl,

                      fit: BoxFit.cover,
                      loadingBuilder: (context, child, loadingProgress) {
                        if (loadingProgress == null) return child;
                        return const Center(child: CircularProgressIndicator());
                      },
                      errorBuilder: (context, error, stackTrace) {
                        return Center(
                          child: Image.asset('assets/images/dart.jpg'),
                        );
                      },
                    ),
                  ),
                ),

                Gap(24),
                SEOText(
                  course.name,
                  style: context.textStyle.bodyleLgBold.copyWith(
                    color: context.colorScheme.primary,
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
