import 'package:flutter/material.dart';
import 'package:my_prtofolio/features/appbar/my_app_bar.dart';
import 'package:my_prtofolio/features/home/widget/background_blur.dart';
import 'package:my_prtofolio/features/home/widget/hero_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const BackgroundBlur(),
          //
          HeroWidget(),
          //
          const MyAppBar(),
        ],
      ),
    );
  }
}
