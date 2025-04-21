import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:my_prtofolio/features/courses/widget/courses_item.dart';
import 'package:my_prtofolio/features/courses/widget/home_title_subtitle.dart';
import 'package:my_prtofolio/helper/extensions.dart';

class HomeCoursesList extends StatelessWidget {
  const HomeCoursesList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HomeTitleSubtitle(
          title: context.texts.courses,
          subtitle: context.texts.courses_subtitle,
        ),
        Gap(32),
        context.isDesktop
            ? const HomeCoursrsListDesktop()
            : HomeCoursesListMobile(),
      ],
    );
  }
}

class HomeCoursesListMobile extends StatelessWidget {
  HomeCoursesListMobile({super.key});
  final scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scrollbar(
        controller: scrollController,
        thumbVisibility: true,
        child: SingleChildScrollView(
          controller: scrollController,
          scrollDirection: Axis.horizontal,

          child: Row(
            children: [
              SizedBox(width: 240, child: const CoursesItem()),
              SizedBox(width: 240, child: const CoursesItem()),
              SizedBox(width: 240, child: const CoursesItem()),
              SizedBox(width: 240, child: const CoursesItem()),
            ],
          ),
        ),
      ),
    );
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
