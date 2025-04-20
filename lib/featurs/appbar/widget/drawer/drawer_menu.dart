import 'package:flutter/material.dart';
import 'package:my_prtofolio/featurs/appbar/widget/drawer/small_menus.dart';
import 'package:my_prtofolio/helper/extensions.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: context.colorScheme.surface,
        boxShadow: [
          BoxShadow(
            color: context.colorScheme.surface.withOpacity(0.4),
            blurRadius: 6,
            spreadRadius: 3,
          ),
        ],
      ),

      child: SmallMenus(),
    );
  }
}
