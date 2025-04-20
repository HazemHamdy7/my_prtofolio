import 'package:flutter/material.dart';
import 'package:my_prtofolio/features/courses/widget/courses_item.dart';
import 'package:my_prtofolio/helper/extensions.dart';

class HomeCoursesList extends StatelessWidget {
  const HomeCoursesList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [HomeCoursrsListDesktop()]);
  }
}

class HomeCoursrsListDesktop extends StatelessWidget {
  const HomeCoursrsListDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: context.insets.padding),
      child: Row(
        children: [
          Expanded(child: const CoursesItem()),
          Expanded(child: const CoursesItem()),
          Expanded(child: const CoursesItem()),
        ],
      ),
    );
  }
}
