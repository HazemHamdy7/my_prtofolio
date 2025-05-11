import 'package:go_router/go_router.dart';
import 'package:my_prtofolio/features/courses_page/presentation/courses_page.dart';
import 'package:my_prtofolio/features/about/about_page.dart';
import 'package:my_prtofolio/features/blog/presentation/blog_page.dart';
 import 'package:my_prtofolio/features/home/presentation/home_page.dart';

class Routes {
  static const String home = '/';
  static const String courses = '/courses';
  static const String blog = '/blog';
  static const String about = '/about';
  // static const String viewCourses = '/viewCourses';
}

class AppRoute {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: Routes.home,
        builder: (context, state) => const HomePage(),
        pageBuilder: (context, state) => NoTransitionPage(child: HomePage()),
      ),
      GoRoute(
        path: Routes.courses,
        builder: (context, state) => const CoursesPage(),
        pageBuilder: (context, state) => NoTransitionPage(child: CoursesPage()),
      ),
      GoRoute(
        path: Routes.blog,
        builder: (context, state) => const BlogPage(),
        pageBuilder: (context, state) => NoTransitionPage(child: BlogPage()),
      ),
      GoRoute(
        path: Routes.about,
        builder: (context, state) => const AboutPage(),
        pageBuilder: (context, state) => NoTransitionPage(child: AboutPage()),
      ),
      // GoRoute(
      //   path: Routes.viewCourses,
      //   builder: (context, state) => const ViewCourses(),
      //   pageBuilder: (context, state) => NoTransitionPage(child: ViewCourses()),
      // ),
    ],
  );
}
