
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:my_prtofolio/features/home/presentation/my_services/widget/custom_card_services.dart';
import 'package:visibility_detector/visibility_detector.dart';

class AnimatedServiceItem extends StatefulWidget {
  final dynamic service;

  const AnimatedServiceItem({super.key, required this.service});

  @override
  State<AnimatedServiceItem> createState() => _AnimatedServiceItemState();
}

class _AnimatedServiceItemState extends State<AnimatedServiceItem> {
  bool _isVisible = false;

  @override
  Widget build(BuildContext context) {
    return VisibilityDetector(
      key: Key(widget.service.title),
      onVisibilityChanged: (info) {
        if (info.visibleFraction > 0.2 && !_isVisible) {
          setState(() => _isVisible = true);
        }
      },
      child: TweenAnimationBuilder(
        duration: const Duration(milliseconds: 1500),
        tween: Tween<double>(begin: 0.0, end: _isVisible ? 1.0 : 0.0),
        curve: Curves.easeOutBack,
        builder: (context, value, child) {
          return Transform.scale(
            scale: value,
            child: Opacity(
              opacity: value.clamp(0.0, 1.0),
              child: Column(
                children: [
                  CustomCardServices(
                    title: widget.service.title,
                    description: widget.service.description,
                    imageUrl: widget.service.imageUrl,
                    buttonTitle: "See More",
                  ),
                  const Gap(16),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
