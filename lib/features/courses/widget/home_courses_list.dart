import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:my_prtofolio/features/courses/widget/home_courses_list_mobile.dart';
import 'package:my_prtofolio/features/courses/widget/home_courses_list_desktop.dart';
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
            ? const HomeCoursesListDesktop()
            : HomeCoursesListMobile(),
      ],
    );
  }
}
