import 'package:flutter/material.dart';
import 'package:my_prtofolio/features/appbar/widget/drawer/small_menus.dart';
import 'package:my_prtofolio/helper/extensions.dart';

class DrawerMenu extends StatefulWidget {
  const DrawerMenu({super.key});

  @override
  State<DrawerMenu> createState() => _DrawerMenuState();
}

class _DrawerMenuState extends State<DrawerMenu>
    with SingleTickerProviderStateMixin {
  late final _controllerr = AnimationController(
    duration: const Duration(milliseconds: 200),
    vsync: this,
  );

  late final _animation = Tween<Offset>(
    begin: const Offset(0, -1),
    end: Offset.zero,
  ).animate(CurvedAnimation(parent: _controllerr, curve: Curves.easeIn));

  @override
  void dispose() {
    _controllerr.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: SlideTransition(
        position: _animation,
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: context.colorScheme.surface,
            boxShadow: [
              BoxShadow(
                color: context.colorScheme.surface.withOpacity(0.1),
                blurRadius: 6,
                spreadRadius: 3,
              ),
            ],
          ),

          child: SmallMenus(),
        ),
      ),
    );
  }
}
