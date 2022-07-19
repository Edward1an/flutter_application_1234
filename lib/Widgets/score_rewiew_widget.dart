import 'dart:math';

import 'package:flutter/material.dart';
class MyDrawWidget extends StatelessWidget {
  const MyDrawWidget({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const double a = 100;
    return CustomPaint(
      size: const Size(a,a),
      painter: MyPainter(),
      child: const Center(child: Text('${0.34 * 100}%', style: TextStyle(fontSize: 10),)),
    );
  }
}

class MyPainter extends CustomPainter{
  final double persent= 0.34;

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
  persentPaint.strokeWidth = 5;
  persentPaint.style = PaintingStyle.stroke;
  canvas.drawOval(Offset.zero & size, backPaint);

  canvas.drawArc(const Offset(5.5, 5.5) & Size(size.width - 11, size.height - 11), 
  -pi/2 + pi * 2 * persent, 2 * pi - (1.0 - persent), false, forePaint);

  canvas.drawArc(const Offset(5.5, 5.5) & Size(size.width - 11, size.height - 11), 
  -pi/2, 2 * pi * persent, false, persentPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}