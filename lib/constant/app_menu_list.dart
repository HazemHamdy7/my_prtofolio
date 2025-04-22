import 'package:flutter/widgets.dart';
import 'package:my_prtofolio/helper/extensions.dart';
import 'package:my_prtofolio/shared/routes/app_route.dart';

class AppMenuList {
  static List<AppMenu> getItem(BuildContext context) {
    return [
      AppMenu(title: context.texts.home, path: Routes.home),
      AppMenu(title: context.texts.courses, path: Routes.courses),
      AppMenu(title: context.texts.blog, path: Routes.blog),
      AppMenu(title: context.texts.about, path: Routes.about),
    ];
  }
}

class AppMenu {
  String title;
  String path;

  AppMenu({required this.title, required this.path});
}
