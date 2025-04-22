import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
 import 'package:my_prtofolio/constant/app_menu_list.dart';
import 'package:my_prtofolio/features/appbar/widget/large_app_bar_menu_item.dart';
 
class LargeMenus extends StatelessWidget {
  const LargeMenus({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children:
          AppMenuList.getItem(context)
              .map(
                (AppMenu e) => LargeAppBarMenuItem(
                  text: e.title,
                  isSelected: GoRouterState.of(context).fullPath == e.path,
                  onTap: () {
                    context.go(e.path);
                  },
                ),
              )
              .toList(),
    );
  }
}
