import 'package:flutter/material.dart';
import 'package:my_prtofolio/helper/extensions.dart';
import 'package:my_prtofolio/shared/curved_line_painter.dart';

class StyledCard extends StatefulWidget {
  const StyledCard({
    super.key,
    this.width,
    this.height,
    this.padding,
    this.borderRadius,
    this.borderEffect = false,
    required this.child,
  });

  final double? width;
  final double? height;
  final EdgeInsets? padding;
  final BorderRadius? borderRadius;
  final Widget child;
  final bool borderEffect;
  @override
  State<StyledCard> createState() => _StyledCardState();
}

class _StyledCardState extends State<StyledCard> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        if (widget.borderEffect) ...[
          _BorderShadow(),
          Positioned(
            // This is the shadow effect that is added to the card
            bottom: 0,
            right: 0,
            child: const _BorderShadow(),
          ),
        ],

        Container(
          width: widget.width,
          height: widget.height,

          padding: widget.padding ?? EdgeInsets.all(context.insets.cardPadding),
          decoration: BoxDecoration(
            border: Border.all(color: context.colorScheme.outline),
            color: context.colorScheme.surface,
            borderRadius:
                widget.borderRadius ?? BorderRadius.all(Radius.circular(24)),
          ),
          child: widget.child,
        ),
        if (widget.borderEffect) ...[
          CustomPaint(
            size: Size(widget.width ?? 0, widget.height ?? 0),
            painter: CurvedLinePainter(color: context.colorScheme.primary),
          ),
        ],
      ],
    );
  }
}

class _BorderShadow extends StatelessWidget {
  const _BorderShadow();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(24)),
        boxShadow: [
          BoxShadow(
            color: context.colorScheme.primary.withOpacity(0.5),
            blurRadius: 10,
            spreadRadius: 3,
          ),
        ],
      ),
    );
  }
}
