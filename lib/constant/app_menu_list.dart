import 'package:flutter/widgets.dart';
import 'package:my_prtofolio/constant/extensions.dart';
import 'package:my_prtofolio/routes/app_route.dart';

class AppMenuList {
  static List<AppMenu> getItem(BuildContext context) {
    return [
      AppMenu(title: context.texts.home, path: AppRoutes.home),
      AppMenu(title: context.texts.courses, path: AppRoutes.courses),
      AppMenu(title: context.texts.blog, path: AppRoutes.blog),
      AppMenu(title: context.texts.about, path: AppRoutes.about),
    ];
  }
}

class AppMenu {
  String title;
  String path;

  AppMenu({required this.title, required this.path});
}
