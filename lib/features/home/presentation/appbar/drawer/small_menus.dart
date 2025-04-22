import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_prtofolio/constant/app_menu_list.dart';
import 'package:my_prtofolio/features/home/presentation/appbar/widget/large_app_bar_menu_item.dart';

class SmallMenus extends StatelessWidget {
  const SmallMenus({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
