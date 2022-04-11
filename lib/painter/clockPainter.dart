import 'dart:math';
import 'package:flutter/material.dart';

class ClockPainter extends CustomPainter {
  final DateTime dateTime;

  ClockPainter(this.dateTime);
  @override
  void paint(Canvas canvas, Size size) {
    double centerX = size.width / 2;
    double centerY = size.height / 2;
    Offset center = Offset(centerX, centerY);

    //6
    canvas.drawLine(
        Offset(10, centerY),
        Offset(30, centerY),
        Paint()
          ..color = Colors.grey
          ..style = PaintingStyle.stroke
          ..strokeWidth = 1);

    //12
    canvas.drawLine(
        Offset(centerX * 2 - 30, centerY),
        Offset(centerX * 2 - 10, centerY),
        Paint()
          ..color = Colors.grey
          ..style = PaintingStyle.stroke
          ..strokeWidth = 1);

    //9
    canvas.drawLine(
        Offset(centerX, 10),
        Offset(centerX, 30),
        Paint()
          ..color = Colors.grey
          ..style = PaintingStyle.stroke
          ..strokeWidth = 1);

    //3
    canvas.drawLine(
        Offset(centerX, centerY * 2 - 30),
        Offset(centerX, centerY * 2 - 10),
        Paint()
          ..color = Colors.grey
          ..style = PaintingStyle.stroke
          ..strokeWidth = 1);

    //hour calculation
    double hourX = centerX +
        size.width *
            0.25 *
            cos((dateTime.hour * 30 + dateTime.minute * 0.5) * pi / 180);
    double hourY = centerY +
        size.width *
            0.25 *
            sin((dateTime.hour * 30 + dateTime.minute * 0.5) * pi / 180);

    Paint hourPaint = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;

    canvas.drawLine(center, Offset(hourX, hourY), hourPaint);

    //minute calculation
    double minuteX =
        centerX + size.width * 0.4 * cos((dateTime.minute * 6) * pi / 180);
    double minuteY =
        centerY + size.width * 0.4 * sin((dateTime.minute * 6) * pi / 180);

    Paint minutePaint = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;

    //minutes
    canvas.drawLine(center, Offset(minuteX, minuteY), minutePaint);

    //second calculation
    double secondX =
        centerX + size.width * 0.45 * cos((dateTime.second * 6) * pi / 180);
    double secondY =
        centerY + size.width * 0.45 * sin((dateTime.second * 6) * pi / 180);

    Paint secPaint = Paint()
      ..color = Colors.red
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.2;

    //second Line
    canvas.drawLine(center, Offset(secondX, secondY), secPaint);

    Paint dotPainter = Paint()..color = Colors.black;
    canvas.drawCircle(center, 4, dotPainter);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
