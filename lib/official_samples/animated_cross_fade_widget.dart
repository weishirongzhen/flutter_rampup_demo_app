import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateful_widget.dart';

class AnimatedCrossFadeWidget extends BaseSampleStatefulWidget {
  static String name = 'AnimatedCrossFade';
  static String route = '/ui/AnimatedCrossFade';

  @override
  BaseSampleStatefulWidgetState createState() => _AnimatedCrossFadeWidget();
}

class _AnimatedCrossFadeWidget extends BaseSampleStatefulWidgetState<AnimatedCrossFadeWidget> {
  @override
  String getFilePath() {
    return 'lib/official_samples/animated_cross_fade_widget.dart';
  }

  @override
  String getTitle() {
    return AnimatedCrossFadeWidget.name;
  }

  //<code>

  bool _first = false;

  @override
  Widget buildBody(BuildContext context) {
    return Column(
      children: <Widget>[
        ///淡入淡出的切换两个widget
        AnimatedCrossFade(
          duration: const Duration(milliseconds: 700),
          firstChild: const FlutterLogo(
            style: FlutterLogoStyle.horizontal,
            size: 200.0,
          ),
          secondChild: const FlutterLogo(
            style: FlutterLogoStyle.stacked,
            size: 200.0,
          ),
          crossFadeState: _first ? CrossFadeState.showFirst : CrossFadeState.showSecond,
        ),

        ///点击后改变要显示的widget
        RaisedButton(
          onPressed: () {
            setState(() {
              _first = !_first;
            });
          },
          child: Text('Click me'),
        ),
      ],
    );
  }
//<code>
}
