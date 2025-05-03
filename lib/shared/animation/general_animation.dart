import 'package:flutter/material.dart';
import 'package:my_prtofolio/features/experienes/widget/experence_item.dart';
import 'package:visibility_detector/visibility_detector.dart';

class GeneralAnimation extends StatefulWidget {
  final dynamic experience;
  final int milliseconds = 900;

  const GeneralAnimation({super.key, required this.experience});

  @override
  State<GeneralAnimation> createState() => _GeneralAnimationState();
}

class _GeneralAnimationState extends State<GeneralAnimation> {
  bool _isVisible = false;
  final int milliseconds = 900;

  @override
  Widget build(BuildContext context) {
    return VisibilityDetector(
      key: Key(widget.experience.title['en'] ?? 'default'),
      onVisibilityChanged: (info) {
        if (info.visibleFraction > 0.2 && !_isVisible) {
          setState(() => _isVisible = true);
        }
      },
      child: TweenAnimationBuilder(
        duration: Duration(milliseconds: milliseconds),
        tween: Tween<double>(begin: 0.0, end: _isVisible ? 1.0 : 0.0),
        curve: Curves.easeOutCubic,
        builder: (context, value, child) {
          return Transform.translate(
            offset: Offset(0, 30 * (1 - value)),
            child: Opacity(
              opacity: value,
              child: ExperenceItem(experiences: widget.experience),
            ),
          );
        },
      ),
    );
  }
}
