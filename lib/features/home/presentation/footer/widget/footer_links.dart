import 'package:flutter/material.dart';
import 'package:my_prtofolio/constant/app_icon.dart';
import 'package:my_prtofolio/features/home/presentation/footer/widget/footer_link_item.dart';
import 'package:my_prtofolio/helper/url_launcher.dart';

class FooterLinks extends StatelessWidget {
  const FooterLinks({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FooterLinkItem(
          icon: AppIcons.github,
          onPressed:
              () => handleButtonClick(
                context: context,
                url: 'https://github.com/HazemHamdy7/',
              ),
        ),
        FooterLinkItem(
          icon: AppIcons.linkedIn,
          onPressed:
              () => handleButtonClick(
                context: context,
                url: 'https://www.linkedin.com/in/ahmed-hamdy-416463195/',
              ),
        ),
        FooterLinkItem(
          icon: AppIcons.facebook,
          onPressed:
              () => handleButtonClick(
                context: context,
                url: 'https://www.facebook.com/',
              ),
        ),
        FooterLinkItem(
          icon: AppIcons.youtube,
          onPressed:
              () => handleButtonClick(
                context: context,
                url: 'https://www.youtube.com/@HazemHamdy7',
              ),
        ),
      ],
    );
  }
}
