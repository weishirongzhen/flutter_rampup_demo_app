import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateless_widget.dart';

//<code>
class ClipPathWidget extends BaseSampleStatelessWidget {
  static String name = 'ClipPath';
  static String route = '/ui/ClipPath';

  @override
  Widget buildBody(BuildContext context) {
    return Column(
      children: <Widget>[
        ClipPath(
          clipper: ArcClipper(),
          child: SizedBox(
            height: 240,
            child: Image.asset(
              'assets/images/butterfly.webp',
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }

  @override
  String getFilePath() {
    return 'lib/official_samples/clip_path_widget.dart';
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

///以下自定义裁切来源于网络参考
class ArcClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height - 30);

    var firstControlPoint = Offset(size.width / 4, size.height);
    var firstPoint = Offset(size.width / 2, size.height);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy, firstPoint.dx, firstPoint.dy);

    var secondControlPoint = Offset(size.width - (size.width / 4), size.height);
    var secondPoint = Offset(size.width, size.height - 100);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy, secondPoint.dx, secondPoint.dy);

    path.lineTo(size.width, 0.0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
//<code>
