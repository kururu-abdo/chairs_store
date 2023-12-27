import 'package:flutter/material.dart';
enum OVERLAY_POSITION { TOP, BOTTOM }
class OpenPainter extends CustomPainter {
  final OVERLAY_POSITION overlayPosition;

  OpenPainter(this.overlayPosition);

  @override
  void paint(Canvas canvas, Size size) {
    switch (overlayPosition) {
      case OVERLAY_POSITION.TOP:
        var paint = Paint()
          ..style = PaintingStyle.fill
          ..color = Colors.white
          ..isAntiAlias = true;

        _drawThreeShape(canvas,
            first: Offset(0, 0),
            second: Offset(20, 0),
            third: Offset(10, 15),
            size: size,
            paint: paint);

        break;
      case OVERLAY_POSITION.BOTTOM:
        var paint = Paint()
          ..style = PaintingStyle.fill
          ..color = Colors.white
          ..isAntiAlias = true;

        _drawThreeShape(canvas,
            first: Offset(15, 0),
            second: Offset(0, 20),
            third: Offset(30, 20),
            size: size,
            paint: paint);

        break;
    }

    canvas.save();
    canvas.restore();
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;

  void _drawThreeShape(Canvas canvas,
      {Offset? first, Offset? second, Offset? third, Size? size, paint}) {
    var path1 = Path()
      ..moveTo(first!.dx, first.dy)
      ..lineTo(second!.dx, second.dy)
      ..lineTo(third!.dx, third.dy);
    canvas.drawPath(path1, paint);
  }

  void _drawTwoShape(Canvas canvas,
      {Offset? first, Offset? second, Size? size, paint}) {
    var path1 = Path()
      ..moveTo(first!.dx, first.dy)
      ..lineTo(second!.dx, second.dy);
    canvas.drawPath(path1, paint);
  }
}