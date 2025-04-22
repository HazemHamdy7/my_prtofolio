import 'package:flutter/material.dart';
import 'package:my_prtofolio/helper/extensions.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Text('Portfolio', 
    
    style: context.textStyle.titleLgBold);
  }
}
