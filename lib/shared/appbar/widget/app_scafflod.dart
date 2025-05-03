import 'package:flutter/material.dart';
import 'package:my_prtofolio/shared/appbar/my_app_bar.dart';
import 'package:my_prtofolio/shared/footer/my_footer.dart';
import 'package:my_prtofolio/features/home/widget/background_blur.dart';
import 'package:my_prtofolio/helper/extensions.dart';
import 'package:my_prtofolio/shared/style/app_size.dart';

class AppScafflod extends StatelessWidget {
  const AppScafflod({super.key, required this.slivers});
  final List<Widget> slivers;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const BackgroundBlur(),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              constraints: BoxConstraints(maxWidth: Insets.maxWidth),
              padding: EdgeInsets.only(top: context.insets.appBarHeight),
              child: CustomScrollView(
                slivers: [
                  //
                  ...slivers,
                  SliverToBoxAdapter(child: MyFooter()),
                ],
              ),
            ),
          ),

          const MyAppBar(),
        ],
      ),
    );
  }
}
