import 'dart:math';

import 'package:flutter/material.dart';
class MyDrawWidget extends StatelessWidget {
  const MyDrawWidget({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: MyPainter()
    );
  }
}

class MyPainter extends CustomPainter{
  final int persent= 34;

  @override
  void paint(Canvas canvas, Size size) {
  final backPaint = Paint();
  backPaint.color = Colors.black;
  backPaint.style = PaintingStyle.fill;
  final forePaint = Paint();
  forePaint.color = Colors.grey;
  forePaint.style = PaintingStyle.stroke;
  forePaint.strokeWidth = 5;
  final persentPaint = Paint();
  persentPaint.color = Colors.orange;
  persentPaint.strokeCap = StrokeCap.round;
  persentPaint.strokeWidth = forePaint.strokeWidth;
  canvas.drawArc(const Offset(5.5, 5.5) & Size(size.width - 11, size.height - 11), 
  -pi/2 + pi * 2 * persent, 2 * pi - (100 - persent), false, backPaint);
  canvas.drawArc(const Offset(5.5, 5.5) & Size(size.width - 11, size.height - 11), 
  -pi/2, 2 * pi * persent, false, persentPaint);
  canvas.drawOval(Offset.zero & size, backPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}