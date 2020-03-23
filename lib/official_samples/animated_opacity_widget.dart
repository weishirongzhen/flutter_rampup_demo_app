import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateful_widget.dart';

class AnimatedOpacityWidget extends BaseSampleStatefulWidget {
  static String name = 'AnimatedOpacity';
  static String route = '/ui/AnimatedOpacity';

  @override
  BaseSampleStatefulWidgetState createState() => _AnimatedOpacityWidget();
}

class _AnimatedOpacityWidget extends BaseSampleStatefulWidgetState<AnimatedOpacityWidget> {
  @override
  String getFilePath() {
    return 'lib/official_samples/animated_opacity_widget.dart';
  }

  @override
  String getTitle() {
    return AnimatedOpacityWidget.name;
  }

  //<code>

  double _opacity = 1.0;

  @override
  Widget buildBody(BuildContext context) {
    return Column(
      children: [
        AnimatedOpacity(
          duration: Duration(seconds: 1),
          opacity: _opacity,
          child: FlutterLogo(
            size: 200,
          ),
        ),
        RaisedButton(
          child: Text('Click me'),
          onPressed: () {
            setState(() {
              _opacity = _opacity == 0 ? 1.0 : 0.0;
            });
          },
        ),
      ],
    );
  }
//<code>
}
