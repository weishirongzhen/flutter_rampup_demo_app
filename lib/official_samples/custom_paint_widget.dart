import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateless_widget.dart';

//<code>
class CustomPaintWidget extends BaseSampleStatelessWidget {
  static String name = 'CustomPaint';
  static String route = '/ui/CustomPaint';

  @override
  Widget buildBody(BuildContext context) {
    return CustomPaint(
      painter: MyPainter(),
    );
  }

  @override
  String getFilePath() {
    return 'lib/official_samples/custom_paint_widget.dart';
  }

  @override
  String getTitle() {
    return name;
  }

  @override
  String getDemoUrl() {
    return '';
  }
}

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..isAntiAlias = true
      ..color = Colors.pink
      ..strokeWidth = 10
      ..style = PaintingStyle.fill;
    Paint paint1 = Paint()
      ..isAntiAlias = true
      ..color = Colors.blue
      ..strokeWidth = 10
      ..style = PaintingStyle.fill;
    Paint paint2 = Paint()
      ..isAntiAlias = true
      ..color = Colors.green
      ..strokeWidth = 10
      ..style = PaintingStyle.fill;

    /// Offset(),横纵坐标偏移
    canvas.drawLine(Offset(0, 0), Offset(50, 50), paint);
    canvas.drawLine(Offset(50, 50), Offset(-10, -140), paint1);
    canvas.drawLine(Offset(-10, -140), Offset(-60, 220), paint2);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
//<code>
