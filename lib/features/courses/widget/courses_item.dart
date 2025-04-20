import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:my_prtofolio/helper/extensions.dart';
import 'package:my_prtofolio/widgets/seo_text.dart';
import 'package:seo_renderer/renderers/text_renderer/text_renderer_style.dart';

class CoursesItem extends StatelessWidget {
  const CoursesItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: AspectRatio(
        aspectRatio: 0.7,
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 1.5,
              child: ClipRRect(
                child: Image.network(
                  "https://img.freepik.com/free-vector/online-courses-elearning-vector-background-online-courses-text-white-desk-with-laptop-computer_572288-1763.jpg?w=2000",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Gap(24),
            SEOText(
              "Course Title",
              style: context.textStyle.bodyleLgBold.copyWith(
                color: context.colorScheme.onBackground,
              ),
              textRenderStyle: TextRendererStyle.header4,
            ),
            Gap(8),
            Expanded(
              child: SEOText(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
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
    );
  }
}
