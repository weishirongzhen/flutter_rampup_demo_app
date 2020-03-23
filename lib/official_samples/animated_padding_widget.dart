import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateful_widget.dart';

class AnimatedPaddingWidget extends BaseSampleStatefulWidget {
  static String name = 'AnimatedPadding';
  static String route = '/ui/AnimatedPadding';

  @override
  BaseSampleStatefulWidgetState createState() => _AnimatedPaddingWidget();
}

class _AnimatedPaddingWidget extends BaseSampleStatefulWidgetState<AnimatedPaddingWidget> {
  @override
  String getFilePath() {
    return 'lib/official_samples/animated_padding_widget.dart';
  }

  @override
  String getTitle() {
    return AnimatedPaddingWidget.name;
  }

  //<code>
  EdgeInsetsGeometry _padding = EdgeInsets.zero;
  bool _change = false;

  @override
  Widget buildBody(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Container(
          height: 200.0,
          width: 200.0,
          color: Colors.blue,
          child: AnimatedPadding(
            duration: Duration(milliseconds: 500),
            padding: _padding,
            curve: Curves.easeOutQuad,
            child: Container(
              color: Colors.redAccent,
            ),
          ),
        ),
        RaisedButton(
          onPressed: () {
            setState(() {
              _change = !_change;
              _padding = _change == true ? EdgeInsets.all(50) : EdgeInsets.all(0);
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
