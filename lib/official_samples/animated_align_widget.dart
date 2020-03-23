import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateful_widget.dart';

class AnimatedAlignWidget extends BaseSampleStatefulWidget {
  static String name = 'AnimatedAlign';
  static String route = '/ui/AnimatedAlign';

  @override
  BaseSampleStatefulWidgetState createState() => _AnimatedAlignWidget();
}

class _AnimatedAlignWidget extends BaseSampleStatefulWidgetState<AnimatedAlignWidget> {
  @override
  String getFilePath() {
    return 'lib/official_samples/animated_align_widget.dart';
  }

  @override
  String getTitle() {
    return AnimatedAlignWidget.name;
  }

  //<code>
  AlignmentGeometry _alignment = Alignment.topRight;

  @override
  Widget buildBody(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Container(
          height: 200.0,
          width: 200.0,
          color: Colors.red.withOpacity(0.4),
          child: AnimatedAlign(
            alignment: _alignment,
            curve: Curves.ease,
            duration: Duration(seconds: 1),
            child: FlutterLogo(
              size: 60,
            ),
          ),
        ),
        RaisedButton(
          onPressed: () {
            setState(() {
              _alignment = _alignment == Alignment.topRight ? Alignment.bottomLeft : Alignment.topRight;
            });
          },
          child: Text(
            "Click me",
          ),
        )
      ],
    );
  }
//<code>
}
