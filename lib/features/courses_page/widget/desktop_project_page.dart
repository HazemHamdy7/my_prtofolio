import 'package:flutter/material.dart';
import 'package:my_prtofolio/features/courses_page/model/projectModel.dart';
import 'package:my_prtofolio/features/courses_page/widget/project_item.dart';
import 'package:my_prtofolio/helper/extensions.dart';
import 'package:my_prtofolio/shared/appbar/widget/app_scafflod.dart';

class DesktopProjectPage extends StatelessWidget {
  const DesktopProjectPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScafflod(
      slivers: [
        SliverGrid.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount:
                context.isDesktop
                    ? 3
                    : context.isTablet
                    ? 2
                    : 1,
            crossAxisSpacing: 24,
            mainAxisSpacing: 24,
            childAspectRatio: context.isDesktop ? 0.7 : 1,
          ),
          itemCount: projects.length,
          itemBuilder:
              (context, index) => Padding(
                padding: const EdgeInsets.all(20.0),
                child: ProjectItem(project: projects[index]),
              ),
        ),
      ],
    );
  }
}
