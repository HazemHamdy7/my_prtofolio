import 'package:flutter/material.dart';
import 'package:my_prtofolio/features/courses_page/widget/desktop_project_page.dart';

class CoursesPage extends StatelessWidget {
  const CoursesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return
    //  context.isDesktop || context.isTablet
    //     ? const
    DesktopProjectPage();
    // : const MobileExperiencesPage();
  }
}
