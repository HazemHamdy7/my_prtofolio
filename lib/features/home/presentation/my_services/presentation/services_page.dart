import 'package:flutter/material.dart';
import 'package:my_prtofolio/features/courses/widget/home_title_subtitle.dart';
import 'package:my_prtofolio/features/home/presentation/my_services/widget/desktop_services_item.dart';
import 'package:my_prtofolio/features/home/presentation/my_services/widget/mobile_services_item.dart';
import 'package:my_prtofolio/helper/extensions.dart';

class ServicesPage extends StatelessWidget {
  const ServicesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HomeTitleSubtitle(
          title: "My Services",
          subtitle:
              " This is my services page you can see my services details here. ",
        ),
        context.isDesktop || context.isTablet
            ? DesktopServicesItem()
            : ServicesItemMobile(),
      ],
    );
  }
}
