import 'package:flutter/material.dart';
import 'package:my_prtofolio/helper/extensions.dart';

class FooterLinkItem extends StatelessWidget {
  const FooterLinkItem({
    super.key,
    required this.icon,
    required this.onPressed,
  });
  final String icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: Image.asset(
        icon,
        height: 30,
        width: 30,
        color: context.colorScheme.primaryContainer,
      ),
    );
  }
}
