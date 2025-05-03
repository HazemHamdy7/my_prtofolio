import 'package:flutter/material.dart';
import 'package:visibility_detector/visibility_detector.dart';
import 'package:my_prtofolio/features/experienes/model/experiences.dart';
import 'package:my_prtofolio/features/experienes/widget/experence_item.dart';

enum AnimationDirection { fromRight, fromLeft, fromBottom, fromTop }

class AnimatedexperienseseItem extends StatefulWidget {
  final Experiences service;
  final AnimationDirection direction;

  const AnimatedexperienseseItem({super.key, 
    required this.service,
    this.direction = AnimationDirection.fromBottom, // Default: من تحت
  });

  @override
  State<AnimatedexperienseseItem> createState() =>
      _AnimatedexperienseseItemState();
}

class _AnimatedexperienseseItemState extends State<AnimatedexperienseseItem> {
  bool _isVisible = false;

  Offset getOffset(double value) {
    switch (widget.direction) {
      case AnimationDirection.fromRight:
        return Offset(30 * (1 - value), 0);
      case AnimationDirection.fromLeft:
        return Offset(-30 * (1 - value), 0);
      case AnimationDirection.fromTop:
        return Offset(0, -30 * (1 - value));
      case AnimationDirection.fromBottom:
      default:
        return Offset(0, 30 * (1 - value));
    }
  }

  @override
  Widget build(BuildContext context) {
    return VisibilityDetector(
      key: Key(widget.service.title['en'] ?? 'default'),
      onVisibilityChanged: (info) {
        if (info.visibleFraction > 0.2 && !_isVisible) {
          setState(() => _isVisible = true);
        }
      },
      child: TweenAnimationBuilder(
        duration: const Duration(milliseconds: 1500),
        tween: Tween<double>(begin: 0.0, end: _isVisible ? 1.0 : 0.0),
        curve: Curves.easeOutCubic,
        builder: (context, value, child) {
          return Transform.translate(
            offset: getOffset(value),
            child: Opacity(
              opacity: value,
              child: ExperenceItem(experiences: widget.service),
            ),
          );
        },
      ),
    );
  }
}
