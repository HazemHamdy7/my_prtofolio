import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:my_prtofolio/features/courses_page/model/projectModel.dart';
import 'package:my_prtofolio/features/courses_page/widget/custom_feature_item.dart';
 import 'package:my_prtofolio/helper/extensions.dart';
import 'package:my_prtofolio/shared/seo_text.dart';
import 'package:seo_renderer/renderers/text_renderer/text_renderer_style.dart';

class ProjectItem extends StatelessWidget {
  final ProjectModel project;

  const ProjectItem({super.key, required this.project});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        elevation: 10,
        shadowColor: Colors.blue.withValues(alpha: 0.9),
        color: context.colorScheme.onSurface,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AspectRatio(
                  aspectRatio: 2.0,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(project.image, fit: BoxFit.cover),
                  ),
                ),
                const Gap(16),
                SEOText(
                  project.name,
                  style: context.textStyle.bodyleLgBold.copyWith(
                    color: context.colorScheme.onSurface,
                  ),
                  textRenderStyle: TextRendererStyle.header4,
                ),
                const Gap(8),
                 Text(
                  project.description,
                  style: TextStyle(color: Colors.grey, fontSize: 13),
                ),
                const Gap(12),
                Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children:
                      project.tools
                          .map((tool) => CustomFeatureItem(text: tool))
                          .toList(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
