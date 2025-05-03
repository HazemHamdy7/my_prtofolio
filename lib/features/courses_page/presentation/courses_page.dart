import 'package:flutter/material.dart';
import 'package:my_prtofolio/features/courses_page/widget/desktop_courses_page.dart';
import 'package:my_prtofolio/features/courses_page/widget/mobile_courses_page.dart';
import 'package:my_prtofolio/helper/extensions.dart';

class CoursesPage extends StatelessWidget {
  const CoursesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return context.isDesktop || context.isTablet
        ? const DeskTopCoursesPage()
        : const MobileExperiencesPage();
  }
}
