import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateless_widget.dart';

class FlutterLogoWidget extends BaseSampleStatelessWidget {
  static String name = 'FlutterLogo';
  static String route = '/ui/FlutterLogo';

  @override
  Widget buildBody(BuildContext context) {
    //<code>
    /// 前面例子已出现多次，就单纯的flutter 的 logo
    return Column(
      children: <Widget>[
        FlutterLogo(
          size: 100,
        ),
        FlutterLogo(
          size: 100,

        ),
        FlutterLogo(
          colors: Colors.amber,
          size: 100,
        ),
        FlutterLogo(
          style: FlutterLogoStyle.horizontal,
          size: 100,
        ),
        FlutterLogo(
          style: FlutterLogoStyle.markOnly,
          size: 100,
        ),
        FlutterLogo(
          style: FlutterLogoStyle.stacked,
          size: 100,
        ),
      ],
    );
    //<code>
  }

  @override
  String getFilePath() {
    return 'lib/official_samples/flutter_logo_widget.dart';
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
