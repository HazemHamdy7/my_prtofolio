import 'package:flutter/material.dart';

class CurvedLinePainter extends CustomPainter {
  final Color color;

  CurvedLinePainter({super.repaint, required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    const lineSize = 60.0;
    final topLeftPaint =
        Paint()
          ..shader = LinearGradient(
            colors: [color.withOpacity(0), color.withOpacity(0.5)],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ).createShader(const Rect.fromLTWH(0, 0, lineSize, lineSize))
          ..style = PaintingStyle.stroke
          ..strokeWidth = 4
          ..strokeCap = StrokeCap.round;

    final bottomRightPaint =
        Paint()
          ..shader = LinearGradient(
            colors: [color.withOpacity(0), color.withOpacity(0.5)],
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
          ).createShader(
            Rect.fromLTWH(
              size.width - lineSize,
              size.height - lineSize,
              lineSize,
              lineSize,
            ),
          )
          ..style = PaintingStyle.stroke
          ..strokeWidth = 4
          ..strokeCap = StrokeCap.round;

    final path = Path();
    path.moveTo(lineSize, 0);
    path.cubicTo(0, 0, 0, 0, 0, lineSize);
    final path2 = Path();
    path2.moveTo(size.width - lineSize, size.height);
    path2.cubicTo(
      size.width,
      size.height,
      size.width,
      size.height,
      size.width,
      size.height - lineSize,
    );
    canvas.drawPath(path, topLeftPaint);
    canvas.drawPath(path2, bottomRightPaint);
  }

  @override
  bool shouldRepaint(CurvedLinePainter oldDelegate) => true;

  @override
  bool shouldRebuildSemantics(CurvedLinePainter oldDelegate) => true;
}
